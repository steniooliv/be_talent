import 'package:be_talent/src/core/failure/failure.dart';
import 'package:dio/dio.dart';

class HttpService {
  final Dio _dio = Dio();

  Future<Response> get(
    String path, {
    Map<String, String>? headers,
  }) async {
    try {
      return await _dio.get(path, options: Options(headers: headers));
    } on DioException catch (e) {
      throw ServerRequestFailure(
        message: e.message ?? '',
        stackTrace: e.stackTrace.toString(),
      );
    }
  }

  Future<Response> post(
    String path, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        options: Options(headers: headers),
      );
    } on DioException catch (e) {
      throw ServerRequestFailure(
        message: e.message ?? '',
        stackTrace: e.stackTrace.toString(),
      );
    }
  }

  Future<Response> put(
    String path, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        options: Options(headers: headers),
      );
    } on DioException catch (e) {
      throw ServerRequestFailure(
        message: e.message ?? '',
        stackTrace: e.stackTrace.toString(),
      );
    }
  }

  Future<Response> delete(
    String path, {
    Map<String, String>? headers,
  }) async {
    try {
      return await _dio.delete(path, options: Options(headers: headers));
    } on DioException catch (e) {
      throw ServerRequestFailure(
        message: e.message ?? '',
        stackTrace: e.stackTrace.toString(),
      );
    }
  }

  Future<Response> patch(
    String path, {
    Map<String, String>? headers,
    dynamic data,
  }) async {
    try {
      return await _dio.patch(
        path,
        data: data,
        options: Options(headers: headers),
      );
    } on DioException catch (e) {
      throw ServerRequestFailure(
        message: e.message ?? '',
        stackTrace: e.stackTrace.toString(),
      );
    }
  }
}
