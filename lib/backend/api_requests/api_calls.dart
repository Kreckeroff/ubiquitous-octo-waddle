import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class DadataWorkCall {
  static Future<ApiCallResponse> call({
    String? query = '',
  }) {
    final body = '''
{"query":"${query}"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Dadata Work',
      apiUrl:
          'https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/party',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Token 27879a7c280643eec5bc2c61e6f6ddf1aa15e93f',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nameCompany(dynamic response) => getJsonField(
        response,
        r'''$.suggestions[:].value''',
        true,
      );
}

class DadataFioCall {
  static Future<ApiCallResponse> call({
    String? query = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Dadata fio',
      apiUrl:
          'https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/fio',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Token 27879a7c280643eec5bc2c61e6f6ddf1aa15e93f',
      },
      params: {
        'query': query,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic value(dynamic response) => getJsonField(
        response,
        r'''$.suggestions[:].value''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
