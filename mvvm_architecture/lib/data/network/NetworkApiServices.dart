import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mvvm_architecture/data/app_exceptions.dart';

import 'BaseApiServices.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic resJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      returnresponse(response);
    } on SocketException {
      throw FetchDataException("Network Connection Error");
    }
    return resJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic resJson;

    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      returnresponse(response);
    } on SocketException {
      throw FetchDataException("Network Connection Error");
    }
    return resJson;
  }
}

dynamic returnresponse(http.Response res) {
  switch (res.statusCode) {
    case 200:
      final result = jsonDecode(res.body);
      return result;
    case 400:
      throw BadRequestException(res.body.toString());
    case 500:
    case 404:
      throw UnauthorisedException(res.body.toString());

    default:
      throw FetchDataException("Network Connection Error");
  }
}
