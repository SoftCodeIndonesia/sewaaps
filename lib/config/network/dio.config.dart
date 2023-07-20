import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:trumecs/config/network/api.response.dart';

// ignore: constant_identifier_names
enum Method { POST, GET, PUT, DELETE, PATCH }

class ApiProvider {
  final String _apiUrl = 'baseApiUri';

  Dio? _dio;

  static header() => {"Content-Type": "application/json"};

  Dio? get dio => _dio;

  ApiProvider() {
    init();
  }

  Future<ApiProvider> init() async {
    _dio = Dio(BaseOptions(baseUrl: _apiUrl, headers: header()));
    initInterceptors();
    return this;
  }

  void initInterceptors() {
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onRequest: (requestOptions, handler) {
          debugPrint(
              "REQUEST [${requestOptions.method}] => PATH: ${requestOptions.uri} \nHEADERS: ${requestOptions.headers} \nDATA: ${requestOptions.data}");
          return handler.next(requestOptions);
        },
        onResponse: (response, handler) {
          debugPrint("RESPONSE [${response.statusCode}] => ${response.data}");
          return handler.next(response);
        },
        onError: (err, handler) {
          debugPrint(
              "Error Response[${err.response}] \nMESSAGE[${err.message}]");
          return handler.next(err);
        },
      ),
    );
  }

  Future<dynamic> request({
    required String url,
    required Method method,
    dynamic formData,
    Map<String, dynamic>? params,
    bool auth = false,
  }) async {
    Response response;

    if (auth) {
      // String? token = userToken;
      // _dio!.options.headers.addAll({'Authorization': "Bearer $token"});
    }

    try {
      if (method == Method.POST) {
        response = await _dio!.post(url, data: formData);
      } else if (method == Method.DELETE) {
        response = await _dio!.delete(
          url,
          data: params,
          options: Options(contentType: Headers.formUrlEncodedContentType),
        );
      } else if (method == Method.PUT) {
        response = await _dio!.put(url, data: params);
      } else if (method == Method.PATCH) {
        response = await _dio!.patch(
          url,
        );
      } else {
        response = await _dio!.get(url, queryParameters: params);
      }

      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      } else if (response.statusCode == 401) {
        throw Exception("Unauthorized");
      } else if (response.statusCode == 500) {
        throw Exception("Server Error");
      } else {
        throw Exception("Something does won't wrong");
      }
    } on SocketException catch (e) {
      throw Exception("Not Internet Connection : $e");
    } on FormatException catch (e) {
      throw Exception("Bad response format : $e");
    } on DioError catch (e) {
      throw Exception(ApiResponse().dioMessage(dioError: e));
    } catch (e) {
      throw Exception("Something won't wrong : ${e.toString()}");
    }
  }
}
