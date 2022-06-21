import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';

import '../repositories/i_bank_account_repository.dart';

class GetBankAccountData {
  final IBankAccountRepository repository;

  const GetBankAccountData({required this.repository});

  Future<BankAccount> call(String id) async => await repository.getBankAccountData(id);
}
