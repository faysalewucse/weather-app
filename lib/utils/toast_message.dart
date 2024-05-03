import 'package:fluttertoast/fluttertoast.dart';
import 'package:weather_app_steadfastit/helper/colors.dart';

void showErrorMessage(String msg, {bool isSuccess = false}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: ERROR,
      textColor: WHITE,
      fontSize: 16.0
  );
}


void showSuccessMessage(String msg, {bool isSuccess = false}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: WHITE,
      textColor: WHITE,
      fontSize: 16.0
  );
}
