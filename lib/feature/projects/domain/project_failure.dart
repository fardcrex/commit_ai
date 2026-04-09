import 'package:flutter/foundation.dart';

@immutable
sealed class ProjectFailure {
  final String message;

  const ProjectFailure(this.message);

  @override
  String toString() => message;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProjectFailure && other.message == message;
  }

  @override
  int get hashCode => message.hashCode;

  static ProjectFailure notFound() => const NotFoundProjectFailure();

  const factory ProjectFailure.serverError(String message) =
      ServerProjectFailure;
}

class NotFoundProjectFailure extends ProjectFailure {
  const NotFoundProjectFailure() : super('Project not found');
}

class ServerProjectFailure extends ProjectFailure {
  const ServerProjectFailure(super.message);
}
