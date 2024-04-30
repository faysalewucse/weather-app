import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_app_steadfastit/utils/toast_message.dart';

void showApiErrorMessage(response) {
  if (response is DioException) {
    if (response.type == DioExceptionType.connectionTimeout) {
      showErrorMessage('Connection Timeout');
    } else if (response.type == DioExceptionType.receiveTimeout) {
      showErrorMessage('Receive Timeout');
    } else if (response.type == DioExceptionType.badResponse) {
      if (response.response?.statusCode == 400) {
        showErrorMessage(response.response?.data["message"]);
      } else if (response.response?.statusCode == 401) {
        showErrorMessage(response.response?.data["message"]);
      } else if (response.response?.statusCode == 403) {
        showErrorMessage(response.response?.data["message"]);
      } else {
        showErrorMessage(response.response!.data["message"].toString());
      }
      debugPrint("dioError message====>${response.response?.data["message"]}",
          wrapWidth: 1024);
    } else if (response.type == DioExceptionType.sendTimeout) {
      showErrorMessage('Send Timeout');
    } else if (response.type == DioExceptionType.cancel) {
      showErrorMessage('Request Cancelled');
    } else if (response.message!.contains("SocketException")) {
      showErrorMessage("No internet connection");
    } else {
      showErrorMessage(response.message ?? "");
    }
  } else {
    showErrorMessage(response.toString());
  }
}
