import 'dart:convert';

import 'package:bind_test/features/account_data_display/data/models/bank_account_model.dart';
import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'bank_account_data.dart';





abstract class IDummyDataSource {
  Future<BankAccount> getBankAccountData();
}

class DummyDataSource implements IDummyDataSource {
  const DummyDataSource();

  @override
  Future<BankAccount> getBankAccountData() async {
    final jsonString = getBankAccountDataString();
    // final jsonString = fixture('bank_account.json');
    final bankAccountModel = BankAccountModel.fromJson(json.decode(jsonString));
    final bankAccount = bankAccountModel.toDomain();
    return Future.value(bankAccount);
  }
}
