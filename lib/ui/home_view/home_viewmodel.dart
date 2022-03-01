import 'package:crypto_price_list/models/api_response_model.dart';
import 'package:crypto_price_list/models/crypto_model.dart';
import 'package:crypto_price_list/services/api_service.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _apiService = locator<APIService>();
  final _dateFormatter = DateFormat("HH:mm, MMMM d, yyyy");

  Future<APIResponseModel<List<CryptoModel>>> get coinList =>
      _apiService.getCryptoList();

  String formatDate(String date) =>
      _dateFormatter.format(DateTime.parse(date));
}
