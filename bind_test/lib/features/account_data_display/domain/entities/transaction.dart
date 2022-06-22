import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';


@freezed
abstract class Transaction implements _$Transaction {
  const Transaction._();

  const factory Transaction(
      {required String id,
      required String senderOrRecipient,
      required bool isPerson,
      required String senderOrRecipientIcon,
      required bool isIncoming,
      required double amount,
      required DateTime dateTime,
      }) = _Transaction;

}
