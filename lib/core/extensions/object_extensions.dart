import 'package:intl/intl.dart';

extension ObjectExtension on Object? {}

extension DateTimeExtension on DateTime? {
  String get printAll => DateFormat('yyyy/MM/dd hh:mm').format(this!);
  String get print => DateFormat('yyyy/MM/dd').format(this!);
}
