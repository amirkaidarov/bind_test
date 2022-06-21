// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      id: json['id'] as String,
      senderOrRecipient: json['senderOrRecipient'] as String,
      isPerson: json['isPerson'] as bool,
      senderOrRecipientIcon: json['senderOrRecipientIcon'] as String,
      isIncoming: json['isIncoming'] as bool,
      amount: (json['amount'] as num).toDouble(),
      dateTime: json['dateTime'] as String,
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderOrRecipient': instance.senderOrRecipient,
      'isPerson': instance.isPerson,
      'senderOrRecipientIcon': instance.senderOrRecipientIcon,
      'isIncoming': instance.isIncoming,
      'amount': instance.amount,
      'dateTime': instance.dateTime,
    };
