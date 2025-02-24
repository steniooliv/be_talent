import 'package:be_talent/src/core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'http_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
])
void main() {
  late HttpService httpService;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    httpService = HttpService(dio: mockDio);
  });

  test('should make a successful GET request', () async {
    final response = Response(
      data: {'message': 'sucesso'},
      statusCode: 200,
      requestOptions: RequestOptions(path: '/test'),
    );

    when(mockDio.get(any, options: anyNamed('options')))
        .thenAnswer((_) async => response);

    final result = await httpService.get('/test');

    expect(result.statusCode, 200);
    expect(result.data, {'message': 'sucesso'});

    verify(mockDio.get('/test', options: anyNamed('options'))).called(1);
  });

  test('should throw a ServerRequestFailure when failing the GET', () async {
    when(mockDio.get(any, options: anyNamed('options')))
        .thenThrow(DioException(requestOptions: RequestOptions(path: '/test')));

    expect(
      () => httpService.get('/test'),
      throwsA(isA<ServerRequestFailure>()),
    );
  });

  test('should make a successful POST request', () async {
    final body = {'name': 'Stênio de Oliveira', 'age': 34};
    final response = Response(
      data: {'message': 'Criado com sucesso'},
      statusCode: 201,
      requestOptions: RequestOptions(path: '/employees'),
    );

    when(
      mockDio.post(
        any,
        data: body,
        options: anyNamed('options'),
      ),
    ).thenAnswer((_) async => response);

    final result = await httpService.post('/employees', data: body);

    expect(result.statusCode, 201);
    expect(result.data, {'message': 'Criado com sucesso'});

    verify(
      mockDio.post(
        '/employees',
        data: body,
        options: anyNamed('options'),
      ),
    ).called(1);
  });

  test('should throw a ServerRequestFailure when failing the POST', () async {
    final body = {'name': 'Stênio de Oliveira', 'age': 34};

    when(mockDio.post(any, data: body, options: anyNamed('options'))).thenThrow(
      DioException(requestOptions: RequestOptions(path: '/employees')),
    );

    expect(
      () => httpService.post('/employees', data: body),
      throwsA(isA<ServerRequestFailure>()),
    );
  });

  test('should make a successful PUT request', () async {
    final body = {'job': 'Flutter Developer'};
    final response = Response(
      data: {'message': 'Atualizado com sucesso'},
      statusCode: 200,
      requestOptions: RequestOptions(path: '/employees/1'),
    );

    when(
      mockDio.put(
        any,
        data: body,
        options: anyNamed('options'),
      ),
    ).thenAnswer((_) async => response);

    final result = await httpService.put('/employees/1', data: body);

    expect(result.statusCode, 200);
    expect(result.data, {'message': 'Atualizado com sucesso'});

    verify(
      mockDio.put(
        '/employees/1',
        data: body,
        options: anyNamed('options'),
      ),
    ).called(1);
  });

  test('should throw a ServerRequestFailure when failing the PUT', () async {
    final body = {'job': 'Flutter Developer'};

    when(mockDio.put(any, data: body, options: anyNamed('options'))).thenThrow(
      DioException(requestOptions: RequestOptions(path: '/employees/1')),
    );

    expect(
      () => httpService.put('/employees/1', data: body),
      throwsA(isA<ServerRequestFailure>()),
    );
  });

  test('should make a successful PATCH request', () async {
    final body = {'admission_date': '20/01/2021'};
    final response = Response(
      data: {'message': 'Atualizado com sucesso'},
      statusCode: 200,
      requestOptions: RequestOptions(path: '/employees/1'),
    );

    when(
      mockDio.patch(
        any,
        data: body,
        options: anyNamed('options'),
      ),
    ).thenAnswer((_) async => response);

    final result = await httpService.patch('/employees/1', data: body);

    expect(result.statusCode, 200);
    expect(result.data, {'message': 'Atualizado com sucesso'});

    verify(
      mockDio.patch(
        '/employees/1',
        data: body,
        options: anyNamed('options'),
      ),
    ).called(1);
  });

  test('should throw a ServerRequestFailure when failing the PATCH', () async {
    final body = {'admission_date': '20/01/2021'};

    when(mockDio.patch(any, data: body, options: anyNamed('options')))
        .thenThrow(
      DioException(requestOptions: RequestOptions(path: '/employees/1')),
    );

    expect(
      () => httpService.patch('/employees/1', data: body),
      throwsA(isA<ServerRequestFailure>()),
    );
  });

  test('should make a successful DELETE request', () async {
    final response = Response(
      data: {'message': 'Deletado com sucesso'},
      statusCode: 200,
      requestOptions: RequestOptions(path: '/employees/1'),
    );

    when(
      mockDio.delete(
        any,
        options: anyNamed('options'),
      ),
    ).thenAnswer((_) async => response);

    final result = await httpService.delete('/employees/1');

    expect(result.statusCode, 200);
    expect(result.data, {'message': 'Deletado com sucesso'});

    verify(
      mockDio.delete(
        '/employees/1',
        options: anyNamed('options'),
      ),
    ).called(1);
  });

  test('should throw a ServerRequestFailure when failing the DELETE', () async {
    when(mockDio.delete(any, options: anyNamed('options'))).thenThrow(
      DioException(requestOptions: RequestOptions(path: '/employees/1')),
    );

    expect(
      () => httpService.delete('/employees/1'),
      throwsA(isA<ServerRequestFailure>()),
    );
  });
}
