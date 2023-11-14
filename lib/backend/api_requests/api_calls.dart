import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "senha": "${senha}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://api-edifica.onrender.com/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.Token''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
}

class RegistrarCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? senha = '',
    String? papel = 'ADMIN',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "email": "${email}",
  "senha": "${senha}",
  "papel": "${papel}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Registrar',
      apiUrl: 'https://api-edifica.onrender.com/auth/registrar',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProdutosFiltroCall {
  static Future<ApiCallResponse> call({
    String? apikey =
        'e79a944e6de62000a66b20376533f33a56e44d3731eed10eb9a9275f8b1825da',
    String? q = '',
    String? ql = 'br',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProdutosFiltro',
      apiUrl:
          'https://serpapi.com/search.json?engine=google_shopping&q=${q}&gl=${ql}&api_key=${apikey}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic produtos(dynamic response) => getJsonField(
        response,
        r'''$.shopping_results''',
        true,
      );
  static dynamic error(dynamic response) => getJsonField(
        response,
        r'''$.error''',
      );
  static dynamic produtosId(dynamic response) => getJsonField(
        response,
        r'''$.shopping_results[:].product_id''',
        true,
      );
  static dynamic prodPos(dynamic response) => getJsonField(
        response,
        r'''$.shopping_results[:].position''',
        true,
      );
}

class ProdutosDetalhadosCall {
  static Future<ApiCallResponse> call({
    String? apikey =
        'e79a944e6de62000a66b20376533f33a56e44d3731eed10eb9a9275f8b1825da',
    String? q = '',
    String? ql = 'br',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProdutosDetalhados',
      apiUrl:
          'https://serpapi.com/search.json?engine=google_shopping&q=${q}&gl=${ql}&api_key=${apikey}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic produtos(dynamic response) => getJsonField(
        response,
        r'''$.shopping_results''',
        true,
      );
  static dynamic produtoId(dynamic response) => getJsonField(
        response,
        r'''$.shopping_results[:].product_id''',
        true,
      );
}

class VerGestaoCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VerGestao',
      apiUrl: 'https://api-edifica.onrender.com/gestao/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$[:].status''',
        true,
      );
  static dynamic tipo(dynamic response) => getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
        true,
      );
  static dynamic usuarioId(dynamic response) => getJsonField(
        response,
        r'''$[:].usuario_id''',
        true,
      );
}

class CriarGestaoCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
    String? nome = '',
    String? status = '',
    String? tipo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "status": "${status}",
  "tipo": "${tipo}",
  "usuario": {
    "id": "${id}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CriarGestao',
      apiUrl: 'https://api-edifica.onrender.com/gestao',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TesteCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Teste',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerMaterialCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VerMaterial',
      apiUrl: 'https://api-edifica.onrender.com/gestao/${id}/materiais',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$[:].id''',
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$[:].nome''',
      );
  static dynamic quantidade(dynamic response) => getJsonField(
        response,
        r'''$[:].quantidade''',
      );
  static dynamic valor(dynamic response) => getJsonField(
        response,
        r'''$[:].valor''',
      );
}

class VerMaterialOrganizadoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VerMaterialOrganizado',
      apiUrl: 'https://api-edifica.onrender.com/gestao/${id}/materiais/abc',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic curvaA(dynamic response) => getJsonField(
        response,
        r'''$.A''',
        true,
      );
  static dynamic curvaB(dynamic response) => getJsonField(
        response,
        r'''$.B''',
        true,
      );
  static dynamic curvaC(dynamic response) => getJsonField(
        response,
        r'''$.C''',
        true,
      );
}

class AdicionarMaterialCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? nome = '',
    int? quantidade,
    double? valor,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${nome}",
  "quantidade": ${quantidade},
  "valor": ${valor}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AdicionarMaterial',
      apiUrl: 'https://api-edifica.onrender.com/gestao/${id}/materiais',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic nome(dynamic response) => getJsonField(
        response,
        r'''$.nome''',
      );
  static dynamic quantidade(dynamic response) => getJsonField(
        response,
        r'''$.quantidade''',
      );
  static dynamic valor(dynamic response) => getJsonField(
        response,
        r'''$.valor''',
      );
}

class BuscarImagemCall {
  static Future<ApiCallResponse> call({
    String? clientId = 'END_zOzpCzWnwQYhb_l4eTyKQF_F8Vfn4_YHtxFT5P4',
    String? query = '',
    int? page = 1,
    String? lang = 'pt',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscarImagem',
      apiUrl:
          'https://api.unsplash.com/search/photos?client_id=${clientId}&query=${query}&page=${page}&lang=${lang}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imagem(dynamic response) => getJsonField(
        response,
        r'''$.results[:].urls.raw''',
        true,
      );
}

class ApagarMaterialCall {
  static Future<ApiCallResponse> call({
    int? gestaoId,
    int? id,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ApagarMaterial',
      apiUrl:
          'https://api-edifica.onrender.com/gestao/${gestaoId}/materiais/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
