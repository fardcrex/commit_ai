part of 'project_alert_bloc.dart';

@freezed
class ProjectAlertState with _$ProjectAlertState {
  const factory ProjectAlertState.initial() = FormInitial;
  const factory ProjectAlertState.loading() = FormLoading;
  const factory ProjectAlertState.error(String message) = FormError;
  const factory ProjectAlertState.success() = FormSuccess;
}
