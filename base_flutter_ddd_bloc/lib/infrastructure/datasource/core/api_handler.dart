import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../application/core/constants.dart';
import '../../../domain/core/env.dart';
import '../../../presentation/my_app.dart';
import 'api_exception.dart';
import 'api_path.dart';
import 'api_response.dart';

@singleton
class APIHandler {
  Map<String, String> header = <String, String>{
    HttpHeaders.contentTypeHeader: 'application/json'
  };

  Future<APIResponse> callPost(String url, Map<String, dynamic> body) async {
    return _callAPI(url, Method.post, body: body);
  }

  Future<APIResponse> callGet(String url) async {
    return _callAPI(url, Method.get);
  }

  Future<APIResponse> callPut(String url, Map<String, dynamic> body) async {
    return _callAPI(url, Method.put, body: body);
  }

  Future<APIResponse> callDelete(String url, Map<String, dynamic> body) async {
    return _callAPI(url, Method.delete, body: body);
  }

  Future<APIResponse> _callAPI(String url, Method method,
      {Map<String, dynamic>? body}) async {
    HttpClient client = HttpClient();

    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6InNCeCJ9.eyJpc3MiOiJrdnNzand0Iiwic3ViIjoxOTIsImlhdCI6MTY4MDI1MzU1OSwiZXhwIjoxNjgyNjcyNzU5LCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJhZG1pbiIsInJvbGVzIjpbIlVzZXIiXSwia3Zzb3VyY2UiOiJSZXRhaWwiLCJrdnVzZXRmYSI6MCwia3Z3YWl0b3RwIjowLCJrdnNlcyI6ImQ0NDQzYWIyYjUyNzRhZjBhM2Q1NDg3NDFjMWYyMjk2Iiwia3Z1aWQiOjE5Miwia3ZsYW5nIjoidmktVk4iLCJrdnV0eXBlIjowLCJrdnVsaW1pdCI6IkZhbHNlIiwia3Z1YWRtaW4iOiJUcnVlIiwia3Z1YWN0IjoiVHJ1ZSIsImt2dWxpbWl0dHJhbnMiOiJGYWxzZSIsImt2dXNob3dzdW0iOiJUcnVlIiwia3ZiaWQiOjE4OSwia3ZyaW5kaWQiOjIsImt2cmNvZGUiOiJ2YW5ncmV0YWlsZGV2MDEiLCJrdnJpZCI6MTIwMiwia3Z1cmlkIjoxMjAyLCJrdnJnaWQiOjEsInBlcm1zIjoiIn0.pLNrFvoHTC1MDlXT1Qq-uRsb6gs_I57igxR6Kyn6yST0zCa9B_2Jie7VkpaZ1gogVkYvk1TuVIfxHgcV2V5IbNXD65lLtfYcavD-XMHXOpPUXcyQcNay7nK0tFT_C15IIpQSvzOkn7qyS69o3eSdoZ-kdUGIsRyobC6IR3kT1ZcldtO9GeIZkkJIPp-L6hsZArGCnh66r-HAmIC_wuXSD9mbNMdAk4UGECqEWDvNK6mQkdBuXTsaU_7GhAy060p6IFvJtpAxwtYFKlogsmn5b0Agcpu11XsTKZcEWKBxCOrYMvA4TRV0eDYz6KtBcKhUSXO55uXmMhapjcnBUpaE-w';

    // header[HttpHeaders.authorizationHeader] = appData.accessToken;
    header[HttpHeaders.authorizationHeader] = token;
    header[Constant.platform] = Platform.isIOS ? 'ios' : 'android';
    header[Constant.app] = appData.app;

    try {
      Uri uri = Uri.parse(
        (appData.env == Env.dev ? APIPath.hostDEV : APIPath.hostProd) + url,
      );

      log('CALL ${method.toString()}: $uri');
      log('HEADER: ${jsonEncode(header)}');
      log('BODY:  ${jsonEncode(body)}');
      log('==========================================');

      late http.Response response;

      if (method == Method.post) {
        response = await http.post(
          uri,
          body: json.encode(body),
          headers: header,
        );
      } else if (method == Method.get) {
        response = await http.get(
          uri,
          headers: header,
        );
      } else if (method == Method.put) {
        response = await http.put(
          uri,
          body: json.encode(body),
          headers: header,
        );
      } else if (method == Method.delete) {
        response = await http.delete(
          uri,
          body: json.encode(body),
          headers: header,
        );
      }

      log('RESPONSE ${response.statusCode} =>  ${response.body.isNotEmpty ? json.encode(json.decode(response.body)) : ''}');

      if (apiOk(response.statusCode)) {
        return APIResponse(
          data: json.decode(response.body),
        );
      } else {
        if (response.body.isEmpty) {
          throw const APIException(
            message: 'Vui lòng kiểm tra kết nối mạng và thử lại',
            errorCode: '',
          );
        } else {
          var body = json.decode(response.body);

          var e = APIException(
            message: body[Constant.message] ?? '',
            errorCode: body[Constant.errorCode] ?? '',
          );

          throw e;
        }
      }
    } on Exception catch (e) {
      log(e.toString());
      throw const APIException(
        message: 'Vui lòng kiểm tra kết nối mạng và thử lại',
        errorCode: '',
      );
    } finally {
      client.close();
    }
  }

  bool apiOk(int httpStatus) => (httpStatus >= 200 && httpStatus < 300);
}

enum Method { get, post, put, delete }
