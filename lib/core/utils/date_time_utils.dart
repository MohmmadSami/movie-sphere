import 'package:intl/intl.dart';

String formatDate(DateTime date, {String format = 'MMM dd, yyyy'}) {
  return DateFormat(format).format(date);
}

String formatTime(DateTime time, {String format = 'hh:mm a'}) {
  return DateFormat(format).format(time);
}

String formatDateTime(DateTime dateTime, {String format = 'MMM dd, yyyy - hh:mm a'}) {
  return DateFormat(format).format(dateTime);
}

String timeAgo(DateTime date) {
  final Duration diff = DateTime.now().difference(date);

  if (diff.inDays > 365) {
    return '${(diff.inDays / 365).floor()} year${(diff.inDays / 365).floor() > 1 ? 's' : ''} ago';
  }
  if (diff.inDays > 30) {
    return '${(diff.inDays / 30).floor()} month${(diff.inDays / 30).floor() > 1 ? 's' : ''} ago';
  }
  if (diff.inDays > 0) {
    return '${diff.inDays} day${diff.inDays > 1 ? 's' : ''} ago';
  }
  if (diff.inHours > 0) {
    return '${diff.inHours} hour${diff.inHours > 1 ? 's' : ''} ago';
  }
  if (diff.inMinutes > 0) {
    return '${diff.inMinutes} minute${diff.inMinutes > 1 ? 's' : ''} ago';
  }

  return 'Just now';
}

