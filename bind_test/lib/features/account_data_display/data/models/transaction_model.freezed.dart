// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  String get id => throw _privateConstructorUsedError;
  String get senderOrRecipient => throw _privateConstructorUsedError;
  bool get isPerson => throw _privateConstructorUsedError;
  String get senderOrRecipientIcon => throw _privateConstructorUsedError;
  bool get isIncoming => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String senderOrRecipient,
      bool isPerson,
      String senderOrRecipientIcon,
      bool isIncoming,
      double amount,
      String dateTime});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  final TransactionModel _value;
  // ignore: unused_field
  final $Res Function(TransactionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? senderOrRecipient = freezed,
    Object? isPerson = freezed,
    Object? senderOrRecipientIcon = freezed,
    Object? isIncoming = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderOrRecipient: senderOrRecipient == freezed
          ? _value.senderOrRecipient
          : senderOrRecipient // ignore: cast_nullable_to_non_nullable
              as String,
      isPerson: isPerson == freezed
          ? _value.isPerson
          : isPerson // ignore: cast_nullable_to_non_nullable
              as bool,
      senderOrRecipientIcon: senderOrRecipientIcon == freezed
          ? _value.senderOrRecipientIcon
          : senderOrRecipientIcon // ignore: cast_nullable_to_non_nullable
              as String,
      isIncoming: isIncoming == freezed
          ? _value.isIncoming
          : isIncoming // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String senderOrRecipient,
      bool isPerson,
      String senderOrRecipientIcon,
      bool isIncoming,
      double amount,
      String dateTime});
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, (v) => _then(v as _$_TransactionModel));

  @override
  _$_TransactionModel get _value => super._value as _$_TransactionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? senderOrRecipient = freezed,
    Object? isPerson = freezed,
    Object? senderOrRecipientIcon = freezed,
    Object? isIncoming = freezed,
    Object? amount = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_TransactionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      senderOrRecipient: senderOrRecipient == freezed
          ? _value.senderOrRecipient
          : senderOrRecipient // ignore: cast_nullable_to_non_nullable
              as String,
      isPerson: isPerson == freezed
          ? _value.isPerson
          : isPerson // ignore: cast_nullable_to_non_nullable
              as bool,
      senderOrRecipientIcon: senderOrRecipientIcon == freezed
          ? _value.senderOrRecipientIcon
          : senderOrRecipientIcon // ignore: cast_nullable_to_non_nullable
              as String,
      isIncoming: isIncoming == freezed
          ? _value.isIncoming
          : isIncoming // ignore: cast_nullable_to_non_nullable
              as bool,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel extends _TransactionModel {
  const _$_TransactionModel(
      {required this.id,
      required this.senderOrRecipient,
      required this.isPerson,
      required this.senderOrRecipientIcon,
      required this.isIncoming,
      required this.amount,
      required this.dateTime})
      : super._();

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  final String id;
  @override
  final String senderOrRecipient;
  @override
  final bool isPerson;
  @override
  final String senderOrRecipientIcon;
  @override
  final bool isIncoming;
  @override
  final double amount;
  @override
  final String dateTime;

  @override
  String toString() {
    return 'TransactionModel(id: $id, senderOrRecipient: $senderOrRecipient, isPerson: $isPerson, senderOrRecipientIcon: $senderOrRecipientIcon, isIncoming: $isIncoming, amount: $amount, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.senderOrRecipient, senderOrRecipient) &&
            const DeepCollectionEquality().equals(other.isPerson, isPerson) &&
            const DeepCollectionEquality()
                .equals(other.senderOrRecipientIcon, senderOrRecipientIcon) &&
            const DeepCollectionEquality()
                .equals(other.isIncoming, isIncoming) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(senderOrRecipient),
      const DeepCollectionEquality().hash(isPerson),
      const DeepCollectionEquality().hash(senderOrRecipientIcon),
      const DeepCollectionEquality().hash(isIncoming),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(this);
  }
}

abstract class _TransactionModel extends TransactionModel {
  const factory _TransactionModel(
      {required final String id,
      required final String senderOrRecipient,
      required final bool isPerson,
      required final String senderOrRecipientIcon,
      required final bool isIncoming,
      required final double amount,
      required final String dateTime}) = _$_TransactionModel;
  const _TransactionModel._() : super._();

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get senderOrRecipient => throw _privateConstructorUsedError;
  @override
  bool get isPerson => throw _privateConstructorUsedError;
  @override
  String get senderOrRecipientIcon => throw _privateConstructorUsedError;
  @override
  bool get isIncoming => throw _privateConstructorUsedError;
  @override
  double get amount => throw _privateConstructorUsedError;
  @override
  String get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
