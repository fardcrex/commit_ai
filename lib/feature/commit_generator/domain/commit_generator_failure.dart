class CommitGeneratorFailure {
  final String message;

  CommitGeneratorFailure(this.message);
}

sealed class GitDiffFailure {
  final String message;

  const GitDiffFailure(this.message);

  static GitDiffFailure permissionDenied() => const PermissionDeniedFailure();

  static GitDiffFailure notFound() => const NotGitRepositoryFailure();

  static GitDiffFailure unexpected(String err) => UnexpectedFailure(err);
}

class PermissionDeniedFailure extends GitDiffFailure {
  const PermissionDeniedFailure() : super('Permission denied');
}

class NotGitRepositoryFailure extends GitDiffFailure {
  const NotGitRepositoryFailure() : super('Git diff not found');
}

class UnexpectedFailure extends GitDiffFailure {
  const UnexpectedFailure(String err) : super('Unexpected error $err');
}
