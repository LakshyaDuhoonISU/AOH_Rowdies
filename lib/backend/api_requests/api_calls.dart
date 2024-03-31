import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start generate Group Code

class GenerateGroup {
  static String baseUrl = 'https://pl5190.buildship.run';
  static Map<String, String> headers = {};
  static ImageCall imageCall = ImageCall();
  static TextCall textCall = TextCall();
}

class ImageCall {
  Future<ApiCallResponse> call({
    String? theme = '',
    String? genre = '',
    String? describe = '',
  }) async {
    final ffApiRequestBody = '''
{
  "theme": "$theme",
  "genre": "$genre",
  "describe": "$describe"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'image',
      apiUrl: '${GenerateGroup.baseUrl}/hello',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TextCall {
  Future<ApiCallResponse> call({
    String? theme = '',
    String? genre = '',
    String? describe = '',
  }) async {
    final ffApiRequestBody = '''
{
  "theme": "$theme",
  "genre": "$genre",
  "describe": "$describe"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'text',
      apiUrl: '${GenerateGroup.baseUrl}/api1',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End generate Group Code

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
