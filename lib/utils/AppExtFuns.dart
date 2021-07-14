import 'package:intl/intl.dart';

extension AppExtFuns on DateTime{

  String toFormatedDateTime(String format) {

    var formattedDate = DateFormat(format).format(this);

    print(formattedDate);

    if (formattedDate.isEmpty) {
      throw ('this can not be empty');
    }
    return formattedDate;
  }

}