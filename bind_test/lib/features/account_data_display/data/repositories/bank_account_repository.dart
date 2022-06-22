import 'package:bind_test/features/account_data_display/data/datasources/dummy_data_source.dart';
import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';

import '../../domain/repositories/i_bank_account_repository.dart';

class BankAccountRepository implements IBankAccountRepository {
  final IDummyDataSource dataSource;

  const BankAccountRepository({required this.dataSource});

  @override
  Future<BankAccount> getBankAccountData(String id) async {
    final bankAccountModel = await dataSource.getBankAccountData();
    final bankAccount = bankAccountModel.toDomain();
    return bankAccount;
  }
}
