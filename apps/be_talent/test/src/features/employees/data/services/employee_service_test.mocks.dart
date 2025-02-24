// Mocks generated by Mockito 5.4.5 from annotations
// in be_talent/test/src/features/employees/data/services/employee_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:be_talent/src/core/shared/data/services/http_service.dart'
    as _i3;
import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [HttpService].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpService extends _i1.Mock implements _i3.HttpService {
  @override
  _i4.Future<_i2.Response<dynamic>> get(
    String? path, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#get, [path], {#headers: headers}),
            returnValue: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(#get, [path], {#headers: headers}),
              ),
            ),
            returnValueForMissingStub: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(#get, [path], {#headers: headers}),
              ),
            ),
          )
          as _i4.Future<_i2.Response<dynamic>>);

  @override
  _i4.Future<_i2.Response<dynamic>> post(
    String? path, {
    Map<String, String>? headers,
    dynamic data,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#post, [path], {#headers: headers, #data: data}),
            returnValue: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #post,
                  [path],
                  {#headers: headers, #data: data},
                ),
              ),
            ),
            returnValueForMissingStub: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #post,
                  [path],
                  {#headers: headers, #data: data},
                ),
              ),
            ),
          )
          as _i4.Future<_i2.Response<dynamic>>);

  @override
  _i4.Future<_i2.Response<dynamic>> put(
    String? path, {
    Map<String, String>? headers,
    dynamic data,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#put, [path], {#headers: headers, #data: data}),
            returnValue: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #put,
                  [path],
                  {#headers: headers, #data: data},
                ),
              ),
            ),
            returnValueForMissingStub: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #put,
                  [path],
                  {#headers: headers, #data: data},
                ),
              ),
            ),
          )
          as _i4.Future<_i2.Response<dynamic>>);

  @override
  _i4.Future<_i2.Response<dynamic>> delete(
    String? path, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#delete, [path], {#headers: headers}),
            returnValue: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(#delete, [path], {#headers: headers}),
              ),
            ),
            returnValueForMissingStub: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(#delete, [path], {#headers: headers}),
              ),
            ),
          )
          as _i4.Future<_i2.Response<dynamic>>);

  @override
  _i4.Future<_i2.Response<dynamic>> patch(
    String? path, {
    Map<String, String>? headers,
    dynamic data,
  }) =>
      (super.noSuchMethod(
            Invocation.method(#patch, [path], {#headers: headers, #data: data}),
            returnValue: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #patch,
                  [path],
                  {#headers: headers, #data: data},
                ),
              ),
            ),
            returnValueForMissingStub: _i4.Future<_i2.Response<dynamic>>.value(
              _FakeResponse_0<dynamic>(
                this,
                Invocation.method(
                  #patch,
                  [path],
                  {#headers: headers, #data: data},
                ),
              ),
            ),
          )
          as _i4.Future<_i2.Response<dynamic>>);
}
