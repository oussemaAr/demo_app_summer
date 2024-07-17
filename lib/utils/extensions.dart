import 'package:intl/intl.dart';

extension ConvertTime on int {
  String convertToReadbleTime() {
    var date = DateTime.fromMicrosecondsSinceEpoch(this * 1000);
    var formatedDate = DateFormat("E dd MM yyyy - kk:mm").format(date);
    return formatedDate;
  }
}
