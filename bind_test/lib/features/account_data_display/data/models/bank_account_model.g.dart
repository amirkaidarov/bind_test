// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAccountModel _$$_BankAccountModelFromJson(Map<String, dynamic> json) =>
    _$_BankAccountModel(
      id: json['id'] as String,
      currency: json['currency'] as String,
      currentAmount: (json['currentAmount'] as num).toDouble(),
      transactions: (json['transactions'] as List<dynamic>)
          .map((e) => TransactionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BankAccountModelToJson(_$_BankAccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'currentAmount': instance.currentAmount,
      'transactions': instance.transactions,
    };
