// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

String dateFormatToDDmonthYYYY(String date) {
  final inputDate = DateTime.parse(date);
  return DateFormat('dd MMM yyyy').format(inputDate);
}

String dateFormatToYYYYMMdd(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

String dateFormatToddmmyyyy(DateTime date) {
  return DateFormat('dd/MM/yyyy').format(date);
}

String formatDateForSchedule(DateTime date) {
  return DateFormat('dd\nMMM').format(date);
}

String extractTime(DateTime timestamp) {
  return DateFormat('HH:mm').format(timestamp);
}

String formatTime(DateTime dateTime) {
  return "${dateTime.hour.toString().padLeft(2, '0')}.${dateTime.minute.toString().padLeft(2, '0')}";
}

String dateFormatToYYYYMMddWithDay(DateTime inputDate) {
  return DateFormat("dd/MM/yyyy, EEEE").format(inputDate);
}

extension DateTimeExtension on DateTime {
  bool isAfterOrEquals(DateTime other) {
    return isAfter(other) || isAtSameMomentAs(other);
  }

  bool isBeforeOrEquals(DateTime other) {
    return isBefore(other) || isAtSameMomentAs(other);
  }
}

String dateFormatToDay(DateTime inputDate) {
  return DateFormat('E', 'en_US').format(inputDate);
}

String dateFormatToDayOfMonth(DateTime inputDate) {
  return DateFormat('d').format(inputDate);
}

String dateFormatToMonthYear(DateTime date) {
  return DateFormat('MMMM yyyy').format(date);
}

String dateFormatToDayMonthYear(DateTime date) {
  return DateFormat('dd MMMM yyyy').format(date);
}
