import 'dart:convert';

import 'package:crypto_app/response.dart';
import 'package:http/http.dart' as http;

import 'api_key.dart';

const String baseUrl = 'https://api.coingecko.com/api/v3';

class NetworkService {
  Future<http.Response> getRequest({
    required String url,
    Map<String, String>? headers,
  }) {
    return http.get(
      Uri.parse('$baseUrl$url?x_cg_demo_api_key=$API_KEY'),
      headers: headers ??
          <String, String>{
            'Content-Type': 'application/json',
          },
    );
  }

  Future<http.Response> postRequest({
    required String url,
    Map<String, String>? headers,
    Object? body,
  }) {
    return http.post(
      Uri.parse('$baseUrl$url?x_cg_demo_api_key=$API_KEY'),
      headers: headers,
      body: body,
    );
  }

  Future<Response> getCoinListWithMarketData({
    required String url,
  }) async {
    try {
      final response = await getRequest(url: url);
      return Response(data: jsonDecode(response.body) as Map<String, dynamic>);
    } catch (e) {
      return Response(error: e.toString());
    }
  }
}
