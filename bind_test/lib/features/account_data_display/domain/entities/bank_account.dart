import 'package:bind_test/features/account_data_display/domain/entities/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';

@freezed
abstract class BankAccount implements _$BankAccount {
  const BankAccount._();

  const factory BankAccount(
      {required String id,
      required String currency,
      required double currentAmount,
      required List<Transaction> transactions,
      }) = _BankAccount;

}
