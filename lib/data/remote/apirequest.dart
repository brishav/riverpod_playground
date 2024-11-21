import 'dart:io';

import 'package:dio/dio.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:flutter/material.dart';

class ApiRequest {
  Future<BaseOptions> getBaseOptions() async {
    return BaseOptions(
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        HttpHeaders.acceptHeader: "application/json",
      },
    );
  }

  Future<Response> apiGet(String url, Map<String, String> apiHeaders,
      Map<String, String> query) async {
    final dio = Dio(await getBaseOptions());

    dio.interceptors.add(
      initializeInterceptor(),
    );

    return await dio.get(url,
        options: Options(
            receiveTimeout: const Duration(seconds: 5),
            sendTimeout: const Duration(seconds: 5),
            followRedirects: false,
            headers: apiHeaders),
        queryParameters: query);
  }

  Future<Response> apiDelete(String url, Map<String, String> apiHeaders,
      Map<String, String> query) async {
    final dio = Dio(await getBaseOptions());

    dio.interceptors.add(
      initializeInterceptor(),
    );

    return await dio.delete(url,
        options: Options(
            receiveTimeout: const Duration(seconds: 5),
            sendTimeout: const Duration(seconds: 5),
            followRedirects: false,
            headers: apiHeaders),
        queryParameters: query);
  }

  Future<Response> apiPost(String url, Map<String, String> apiHeaders,
      Map<String, String> query, Map<String, dynamic> body) async {
    final dio = Dio(await getBaseOptions());

    dio.interceptors.add(
      initializeInterceptor(),
    );

    return dio.post(url,
        options: Options(
            receiveTimeout: const Duration(seconds: 5),
            sendTimeout: const Duration(seconds: 5),
            headers: apiHeaders),
        queryParameters: query,
        data: body);
  }

  AwesomeDioInterceptor initializeInterceptor() {
    return AwesomeDioInterceptor(
      logRequestTimeout: true,
      logRequestHeaders: true,
      logResponseHeaders: false,
      logger: debugPrint,
    );
  }
}
