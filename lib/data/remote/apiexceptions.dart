import 'dart:convert';

import 'package:dio/dio.dart';

String ApiExceptions(e) {
  if (e.type == DioExceptionType.badResponse) {
    try {
      var error = json.decode(e.response.toString());
      return error['message'];
    } catch (e) {
      return ('JSON response required.');
    }
  }
  if (e.type == DioExceptionType.connectionTimeout) {
    return ('Check your connection');
  }

  if (e.type == DioExceptionType.receiveTimeout) {
    return ('Unable to connect to the server');
  }

  if (e.type == DioExceptionType.connectionError) {
    return ('Something went wrong');
  }

  if (e.type == DioExceptionType.cancel) {
    return ('Request was cancelled. Try again.');
  }

  return "Something went wrong";
}
