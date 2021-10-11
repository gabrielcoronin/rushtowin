import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:rushtowin/models/recharge_model.dart';
import 'package:rushtowin/models/transaction.dart';
import 'package:rushtowin/models/wallet.dart';

class TransactionWebClient {

  final String transactionHost = 'http://192.168.5.185:9898/api/Transactions';

  Future<List<Transaction>> list(String walletId) async {
    final response = await http
        .get(Uri.parse('$transactionHost/$walletId'));
    final List<dynamic> decodedJson = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return decodedJson
          .map((dynamic json) => Transaction.fromJson(json))
          .toList();
    }
    throw Exception('Failed to load transaction');
  }

  Future<Wallet> getWallet(String walletId) async {
    final response = await http.get(Uri.parse(
        '$transactionHost/getWallet/$walletId'));

    if (response.statusCode == 200) {
      return Wallet.fromJson(jsonDecode(response.body));
    }
    throw Exception('Failed to retrieve wallet');
  }

  Future<Transaction> getLastTransaction(String walletId) async {
    final response = await http.get(Uri.parse(
        '$transactionHost/lastTransaction/$walletId'));

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    }
    throw Exception('Failed to retrieve last transaction');
  }

  Future recharge(RechargeModel recharge) async {
    final String rechargeJson = jsonEncode(recharge.toJson());
    await Future.delayed(const Duration(seconds: 2));

    await http.post(
        Uri.parse('$transactionHost/recharge'),
        headers: {
          'Content-type': 'application/json',
        },
        body: rechargeJson);
  }

  Future<Transaction> bus(String walletId) async {
    await Future.delayed(const Duration(seconds: 2));

    final Response response = await http.post(
        Uri.parse('$transactionHost/bus/$walletId'),
        headers: {
          'Content-type': 'application/json',
        });

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    }
    throw Exception('Failed to load transaction');
  }

  Future<Transaction> subway(String walletId) async {
    await Future.delayed(const Duration(seconds: 2));

    final Response response = await http.post(
        Uri.parse(
            '$transactionHost/subway/$walletId'),
        headers: {
          'Content-type': 'application/json',
        });

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    }
    throw Exception('Failed to load transaction');
  }

  Future<Transaction> train(String walletId) async {
    await Future.delayed(const Duration(seconds: 2));

    final Response response = await http.post(
        Uri.parse('$transactionHost/train/$walletId'),
        headers: {
          'Content-type': 'application/json',
        });

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    }
    throw Exception('Failed to load transaction');
  }
}
