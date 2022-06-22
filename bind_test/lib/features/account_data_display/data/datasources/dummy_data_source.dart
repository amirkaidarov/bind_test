import 'dart:convert';

import 'package:bind_test/features/account_data_display/data/models/bank_account_model.dart';
import 'bank_account_data.dart';





abstract class IDummyDataSource {
  Future<BankAccountModel> getBankAccountData();
}

class DummyDataSource implements IDummyDataSource {
  const DummyDataSource();

  @override
  Future<BankAccountModel> getBankAccountData() async {
    final jsonString = getBankAccountDataString();
    final bankAccountModel = BankAccountModel.fromJson(json.decode(jsonString));
    return Future.value(bankAccountModel);
  }
}
