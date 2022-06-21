import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction_model.dart';

part 'bank_account_model.freezed.dart';
part 'bank_account_model.g.dart';

@freezed
abstract class BankAccountModel implements _$BankAccountModel {
  const BankAccountModel._();

  const factory BankAccountModel({
    required String id,
    required String currency,
    required double currentAmount,
    required List<TransactionModel> transactions,
  }) = _BankAccountModel;

  BankAccount toDomain() {
    return BankAccount(
      id: id,
      currency: currency,
      currentAmount: currentAmount,
      transactions: transactions
          .map((transactionModel) => transactionModel.toDomain())
          .toList(),
    );
  }

  factory BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountModelFromJson(json);
}
