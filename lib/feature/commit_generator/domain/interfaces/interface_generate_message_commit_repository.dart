import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:fpdart/fpdart.dart';

// ignore: one_member_abstracts
abstract interface class IGenerateMessageCommitRepository {
  Future<ResultGenerateMessageCommit> generateMessageCommit(
    FormGeneratorCommit formGeneratorCommit,
  );
}

typedef ResultGenerateMessageCommit
    = Either<CommitGeneratorFailure, ResultIaMessageCommit>;
