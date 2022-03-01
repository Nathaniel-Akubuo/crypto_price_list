import 'dart:convert';

import 'package:crypto_price_list/models/api_response_model.dart';
import 'package:crypto_price_list/models/crypto_model.dart';
import 'package:http/http.dart';

class APIService {
  final _uri = Uri.parse(
      'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false');

  Future<APIResponseModel<List<CryptoModel>>> getCryptoList() async {
    List<CryptoModel> list = [];
    try {
      var response = await get(_uri);
      var data = jsonDecode(response.body);
      if (_isSuccess(response)) {
        for (Map<String, dynamic> map in data) {
          var model = CryptoModel.fromMap(map);
          list.add(model);
        }
        return APIResponseModel(data: list, error: false);
      } else {
        return APIResponseModel();
      }
    } catch (e) {
      return APIResponseModel();
    }
  }

  bool _isSuccess(Response response) =>
      response.statusCode == 200 || response.statusCode == 201 ? true : false;
}
