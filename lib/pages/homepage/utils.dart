import 'package:intl/intl.dart';

bool isCurrentTime(String targetTimeString) {
  DateTime targetTime = DateTime.parse(targetTimeString);
  DateTime currentTime = DateTime.now();

  return currentTime.year == targetTime.year &&
      currentTime.month == targetTime.month &&
      currentTime.day == targetTime.day &&
      currentTime.hour == targetTime.hour &&
      currentTime.minute >= 0 &&
      currentTime.minute < 59;
}

String convertTo12HourFormat(String timeString) {
  DateTime time = DateFormat('HH:mm').parse(timeString.split(' ')[1]);
  String formattedTime = DateFormat('h').format(time);
  String amPm = DateFormat('a').format(time);
  return '$formattedTime$amPm';
}

String formatDate(String dateStr) {
  DateTime date = DateTime.parse(dateStr);
  DateFormat formatter = DateFormat('E, dd MMM');
  String formattedDate = formatter.format(date);

  return formattedDate;
}

String getUVLevel(double uvIndex) {
  if (uvIndex >= 0 && uvIndex <= 2) {
    return 'Low';
  } else if (uvIndex >= 3 && uvIndex <= 5) {
    return 'Medium';
  } else if (uvIndex >= 6 && uvIndex <= 7) {
    return 'High';
  } else if (uvIndex >= 8 && uvIndex <= 10) {
    return 'Very High';
  } else if (uvIndex >= 11) {
    return 'Extreme';
  } else {
    return 'Unknown';
  }
}

int getCurrentTimeIndex(){
  DateTime currentTime = DateTime.now();
  print(currentTime.hour);
  return currentTime.hour + 1;
}