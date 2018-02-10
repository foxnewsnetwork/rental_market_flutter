part of data;

enum NotificationSeverity {
  danger,
  warning,
  success,
  info,
  invisible
}

class NotificationModel {
  final String message;
  final NotificationSeverity severity;

  NotificationModel({
    this.message: ' ',
    this.severity: NotificationSeverity.danger
  });
}