import 'package:dio/dio.dart';

class ApiResponse<T> {
  bool? status = false;
  String? message = '';
  T? data;

  ApiResponse({this.data, this.message, this.status});

  ApiResponse.fromJson({required Response response, required T responseData}) {
    status = response.data['success'];
    message = response.statusMessage!;
    data = responseData;
  }

  bool? get isSuccess => status;

  withDioError({required DioError dioError}) {
    status = false;
    data = null;
    message = dioMessage(dioError: dioError);
  }

  dioMessage({required DioError dioError}) {
    switch (dioError.type) {
      case DioErrorType.connectTimeout:
        return "connecting timeout!";
      case DioErrorType.sendTimeout:
        return "sending timeout!";
      case DioErrorType.receiveTimeout:
        return "receiving timeout!";
      case DioErrorType.response:
        return "incorrect status is ${dioError.response!.statusCode}!";
      case DioErrorType.cancel:
        return "request is cancelled!";
      case DioErrorType.other:
        return "something wen't wrong!";
      default:
    }
  }
}
