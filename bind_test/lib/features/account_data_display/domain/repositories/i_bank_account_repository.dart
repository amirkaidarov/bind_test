import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';

abstract class IBankAccountRepository {
  Future<BankAccount> getBankAccountData(String id);
}