import 'package:bind_test/features/account_data_display/domain/entities/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
abstract class TransactionModel implements _$TransactionModel {
  const TransactionModel._();

  const factory TransactionModel({
    required String id,
    required String senderOrRecipient,
    required bool isPerson,
    required String senderOrRecipientIcon,
    required bool isIncoming,
    required double amount,
    required String dateTime,
  }) = _TransactionModel;

  Transaction toDomain() {
    return Transaction(
      id: id,
      senderOrRecipient: senderOrRecipient,
      isPerson: isPerson,
      senderOrRecipientIcon: senderOrRecipientIcon,
      isIncoming: isIncoming,
      amount: amount,
      dateTime: dateTime,
    );
  }

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
