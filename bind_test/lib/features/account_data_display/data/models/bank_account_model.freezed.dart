// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAccountModel _$BankAccountModelFromJson(Map<String, dynamic> json) {
  return _BankAccountModel.fromJson(json);
}

/// @nodoc
mixin _$BankAccountModel {
  String get id => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get currentAmount => throw _privateConstructorUsedError;
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAccountModelCopyWith<BankAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountModelCopyWith<$Res> {
  factory $BankAccountModelCopyWith(
          BankAccountModel value, $Res Function(BankAccountModel) then) =
      _$BankAccountModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String currency,
      double currentAmount,
      List<TransactionModel> transactions});
}

/// @nodoc
class _$BankAccountModelCopyWithImpl<$Res>
    implements $BankAccountModelCopyWith<$Res> {
  _$BankAccountModelCopyWithImpl(this._value, this._then);

  final BankAccountModel _value;
  // ignore: unused_field
  final $Res Function(BankAccountModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? currency = freezed,
    Object? currentAmount = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currentAmount: currentAmount == freezed
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_BankAccountModelCopyWith<$Res>
    implements $BankAccountModelCopyWith<$Res> {
  factory _$$_BankAccountModelCopyWith(
          _$_BankAccountModel value, $Res Function(_$_BankAccountModel) then) =
      __$$_BankAccountModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String currency,
      double currentAmount,
      List<TransactionModel> transactions});
}

/// @nodoc
class __$$_BankAccountModelCopyWithImpl<$Res>
    extends _$BankAccountModelCopyWithImpl<$Res>
    implements _$$_BankAccountModelCopyWith<$Res> {
  __$$_BankAccountModelCopyWithImpl(
      _$_BankAccountModel _value, $Res Function(_$_BankAccountModel) _then)
      : super(_value, (v) => _then(v as _$_BankAccountModel));

  @override
  _$_BankAccountModel get _value => super._value as _$_BankAccountModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? currency = freezed,
    Object? currentAmount = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_$_BankAccountModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      currentAmount: currentAmount == freezed
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactions: transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankAccountModel extends _BankAccountModel {
  const _$_BankAccountModel(
      {required this.id,
      required this.currency,
      required this.currentAmount,
      required final List<TransactionModel> transactions})
      : _transactions = transactions,
        super._();

  factory _$_BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_BankAccountModelFromJson(json);

  @override
  final String id;
  @override
  final String currency;
  @override
  final double currentAmount;
  final List<TransactionModel> _transactions;
  @override
  List<TransactionModel> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'BankAccountModel(id: $id, currency: $currency, currentAmount: $currentAmount, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankAccountModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.currentAmount, currentAmount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(currentAmount),
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$_BankAccountModelCopyWith<_$_BankAccountModel> get copyWith =>
      __$$_BankAccountModelCopyWithImpl<_$_BankAccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAccountModelToJson(this);
  }
}

abstract class _BankAccountModel extends BankAccountModel {
  const factory _BankAccountModel(
          {required final String id,
          required final String currency,
          required final double currentAmount,
          required final List<TransactionModel> transactions}) =
      _$_BankAccountModel;
  const _BankAccountModel._() : super._();

  factory _BankAccountModel.fromJson(Map<String, dynamic> json) =
      _$_BankAccountModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  double get currentAmount => throw _privateConstructorUsedError;
  @override
  List<TransactionModel> get transactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BankAccountModelCopyWith<_$_BankAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
