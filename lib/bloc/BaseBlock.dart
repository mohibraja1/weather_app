import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/Utils.dart';

class BaseBlock {
  late BuildContext context;
  late double screenWidth;
  late double screenHeight;
  var TAG = 'BaseBlock';

  BaseBlock(BuildContext context) {
    this.context = context;
    this.screenWidth = Utils.getScreenWidth(context);
    this.screenHeight = Utils.getScreenHeight(context);

    TAG = this.runtimeType.toString();
  }

  navigateNextReplacement(Widget widget) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => widget));
  }

  navigateNext(Widget widget) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) => widget));
  }

  moveToLastScreen() {
    Navigator.pop(context);
  }

  goBackScreen(Object result) {
    Navigator.pop(context, result);
  }

  printLog(String msg) {
    print(msg);
  }

  showSnackBar(String value) {
    printLog(value);
    SnackBar(content: Text(value));
  }

  toast(String message) {
    printLog('toast msg is = ' + message);

    /*return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);*/
  }

  /*String unixToStringFormat1(int timestamp, String format) {
    var date = new DateTime.fromMicrosecondsSinceEpoch(timestamp * 1000);
    return date.format(format);
  }

  String unixToStringFormat(String timestamp, String format) {
    var time = int.parse(timestamp);
    var date = new DateTime.fromMicrosecondsSinceEpoch(time * 1000);
    return date.format(format);
  }

  String getFormatedTimeStamp1( String format) {
    final time = DateTime.now().microsecond;
    var date = new DateTime.fromMicrosecondsSinceEpoch(time);
    return date.format(format);
  }

  String getFormatedTimeStamp( ) {

    var date = DateTime.fromMillisecondsSinceEpoch(DateTime.now().millisecond * 1000);

    String format='yyyyMMddhhmmss';
    return date.format(format);
  }
*/
  void hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
