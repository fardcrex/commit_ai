import 'package:commit_ai/presentation/info_page/widget/bullet_point.dart';
import 'package:commit_ai/presentation/info_page/widget/section_title.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          floating: true,
          title: Text('Información'),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const Text(
                'Commit AI: Optimiza tus Mensajes de Commit',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Bienvenido a Commit AI, una herramienta innovadora que utiliza inteligencia artificial para generar mensajes de commit claros, precisos y alineados con las prácticas de Conventional Commits.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              const SectionTitle(title: '¿Qué hace esta app?'),
              const Text(
                'Commit AI te ayuda a crear mensajes de commit profesionales a partir de la información que tú proporcionas. Solo necesitas ingresar:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              const BulletPoint(
                  text:
                      'Descripción del proyecto: El contexto general de tu proyecto.'),
              const BulletPoint(
                  text:
                      'Descripción del cambio: Una breve explicación de lo que se hizo en el commit.'),
              const BulletPoint(
                  text:
                      'Git Diff: La diferencia de código entre el commit anterior y el actual.'),
              const BulletPoint(
                  text:
                      'Tipo de commit: Selecciona manualmente el tipo o deja que la IA lo determine automáticamente.'),
              const BulletPoint(
                  text:
                      'Opciones adicionales: Decide si deseas incluir cuerpo y pie en el mensaje.'),
              const SizedBox(height: 24),
              const SectionTitle(title: '¿Cómo funciona?'),
              const Text(
                'Nuestra app utiliza el modelo de lenguaje Gemini 1.5 de Google Vertex AI, que procesa tus entradas siguiendo especificaciones detalladas, garantizando que los mensajes:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              const BulletPoint(
                  text:
                      'Sean coherentes, en inglés, y sigan la estructura de Conventional Commits.'),
              const BulletPoint(
                  text:
                      'Respeten las reglas de formato, manteniendo el título con un máximo de 50 caracteres.'),
              const BulletPoint(
                  text:
                      'Incluyan información relevante según tus configuraciones, como cuerpo y pie.'),
              const SizedBox(height: 24),
              const SectionTitle(title: '¿Por qué usar Commit AI?'),
              const BulletPoint(
                  text:
                      'Ahorra tiempo: Genera mensajes de commit consistentes en segundos.'),
              const BulletPoint(
                  text:
                      'Estándares garantizados: Cumple con prácticas recomendadas como Conventional Commits.'),
              const BulletPoint(
                  text:
                      'Mayor claridad: Transmite con precisión los cambios realizados en tu proyecto.'),
              const SizedBox(height: 24),
              const SectionTitle(title: 'Tecnología detrás de Commit AI'),
              const Text(
                'La app está desarrollada con Flutter, lo que garantiza un rendimiento fluido y una interfaz moderna. Además, utiliza:',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 16),
              const BulletPoint(
                  text:
                      'Firebase Vertex AI para el procesamiento de lenguaje natural.'),
              const BulletPoint(
                  text:
                      'fpdart para un manejo funcional y robusto de los datos.'),
              const SizedBox(height: 24),
              const SectionTitle(title: 'Ponte en acción'),
              const Text(
                'Con Commit AI, llevarás tus commits al siguiente nivel. Ya sea que trabajes en un equipo o como desarrollador independiente, esta app es tu aliado perfecto para mantener un historial de cambios limpio y profesional.',
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
