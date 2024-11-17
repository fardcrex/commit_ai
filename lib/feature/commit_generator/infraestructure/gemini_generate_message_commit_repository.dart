import 'dart:convert';

import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/commit_generator/domain/interface_generate_message_commit_repository.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:fpdart/fpdart.dart';

class GeminiGenerateMessageCommitRepository
    implements IGenerateMessageCommitRepository {
  final model = FirebaseVertexAI.instance.generativeModel(
    model: 'gemini-1.5-flash',
    generationConfig: GenerationConfig(responseMimeType: 'application/json'),
    systemInstruction: Content.system('''
El usuario te va a proporcionar estos datos    
     String projectDescription,
     String changeDescription,
     String gitDiff,
     String type,
     bool includeBody,
     bool includeFooter, . Quiero que generes un mensaje de commit basado en esos datos, utilizando el formato de Conventional Commits
     . Asegúrate de seguir estas reglas:
0. $specification

1. Elige un tipo de commit entre los siguientes, según el tipo de cambio que observes en el código: ["feat", "fix", "docs", "style", "refactor", "perf", "test", "chore", "build", "ci", "revert", "merge", "hotfix", "config", "deps", "sec", "localization"] siempre y cuando el usuario en el campo type eligió [Let AI decide] en todo caso lo que escogió el usuario.

2. Si el usuario marcó la casilla de incluir cuerpo [includeBody == true], añade el cuerpo del commit. Si el usuario marcó la casilla de incluir pie, añade el pie del commit.

3. Si el usuario marcó la casilla de incluir pie [includeFooter == true],  añade el pie del commit. Si el usuario marcó la casilla de incluir pie, añade el pie del commit.

4. Mantén el título en 50 caracteres como máximo.


5. Usa el siguiente formato para el mensaje:
 {
  "type": "object",
  "properties": {
    "description": {
      "type": "string",
      "description": "Descripción del commit",
      "minLength": 1
    },
    "type": {
      "type": "string",
      "description": "Tipo de commit",
      "minLength": 1
    },
    "scope": {
      "type": ["string", "null"],
      "description": "Alcance del commit",
      "default": null
    },
    "body": {
      "type": ["string", "null"],
      "description": "Cuerpo del commit",
      "default": null
    },
    "footer": {
      "type": ["string", "null"],
      "description": "Pie de página del commit",
      "default": null
    }
  },
  "required": ["description", "type"]
}.

6. Que en la descripción no se repita el tipo de commit, si el usuario eligió [Let AI decide] en el campo type, entonces el tipo de commit lo eligió el modelo.
Devuélveme el mensaje de commit generado en el formato solicitado.
ejemplo ${ResultIaMessageCommit.example()}
'''),
  );
  @override
  Future<ResultGenerateMessageCommit> generateMessageCommit(
      FormGeneratorCommit formGeneratorCommit) async {
    final response = await model.generateContent([
      Content.text(
          '''Los datos para generar el mensaje de commit por parte del usuario son: ${formGeneratorCommit.toJson()}''')
    ]);
    if (response.text == null) {
      return Left(CommitGeneratorFailure('Error generating commit message'));
    }

    final decodedJson = json.decode(response.text!) as Map<String, dynamic>;

    final resultIaMessageCommit = ResultIaMessageCommit.fromJson(decodedJson);

    return Right(resultIaMessageCommit);
  }
}

const specification = '''
Specification
The key words “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”, “MAY”, and “OPTIONAL” in this document are to be interpreted as described in RFC 2119.

Commits MUST be prefixed with a type, which consists of a noun, feat, fix, etc., followed by the OPTIONAL scope, OPTIONAL !, and REQUIRED terminal colon and space.
The type feat MUST be used when a commit adds a new feature to your application or library.
The type fix MUST be used when a commit represents a bug fix for your application.
A scope MAY be provided after a type. A scope MUST consist of a noun describing a section of the codebase surrounded by parenthesis, e.g., fix(parser):
A description MUST immediately follow the colon and space after the type/scope prefix. The description is a short summary of the code changes, e.g., fix: array parsing issue when multiple spaces were contained in string.
A longer commit body MAY be provided after the short description, providing additional contextual information about the code changes. The body MUST begin one blank line after the description.
A commit body is free-form and MAY consist of any number of newline separated paragraphs.
One or more footers MAY be provided one blank line after the body. Each footer MUST consist of a word token, followed by either a :<space> or <space># separator, followed by a string value (this is inspired by the git trailer convention).
A footer’s token MUST use - in place of whitespace characters, e.g., Acked-by (this helps differentiate the footer section from a multi-paragraph body). An exception is made for BREAKING CHANGE, which MAY also be used as a token.
A footer’s value MAY contain spaces and newlines, and parsing MUST terminate when the next valid footer token/separator pair is observed.
Breaking changes MUST be indicated in the type/scope prefix of a commit, or as an entry in the footer.
If included as a footer, a breaking change MUST consist of the uppercase text BREAKING CHANGE, followed by a colon, space, and description, e.g., BREAKING CHANGE: environment variables now take precedence over config files.
If included in the type/scope prefix, breaking changes MUST be indicated by a ! immediately before the :. If ! is used, BREAKING CHANGE: MAY be omitted from the footer section, and the commit description SHALL be used to describe the breaking change.
Types other than feat and fix MAY be used in your commit messages, e.g., docs: update ref docs.
The units of information that make up Conventional Commits MUST NOT be treated as case sensitive by implementors, with the exception of BREAKING CHANGE which MUST be uppercase.
BREAKING-CHANGE MUST be synonymous with BREAKING CHANGE, when used as a token in a footer.

''';
