// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BankAccount {
  String get id => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get currentAmount => throw _privateConstructorUsedError;
  List<Transaction> get transactions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankAccountCopyWith<BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAccountCopyWith<$Res> {
  factory $BankAccountCopyWith(
          BankAccount value, $Res Function(BankAccount) then) =
      _$BankAccountCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String currency,
      double currentAmount,
      List<Transaction> transactions});
}

/// @nodoc
class _$BankAccountCopyWithImpl<$Res> implements $BankAccountCopyWith<$Res> {
  _$BankAccountCopyWithImpl(this._value, this._then);

  final BankAccount _value;
  // ignore: unused_field
  final $Res Function(BankAccount) _then;

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
              as List<Transaction>,
    ));
  }
}

/// @nodoc
abstract class _$$_BankAccountCopyWith<$Res>
    implements $BankAccountCopyWith<$Res> {
  factory _$$_BankAccountCopyWith(
          _$_BankAccount value, $Res Function(_$_BankAccount) then) =
      __$$_BankAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String currency,
      double currentAmount,
      List<Transaction> transactions});
}

/// @nodoc
class __$$_BankAccountCopyWithImpl<$Res> extends _$BankAccountCopyWithImpl<$Res>
    implements _$$_BankAccountCopyWith<$Res> {
  __$$_BankAccountCopyWithImpl(
      _$_BankAccount _value, $Res Function(_$_BankAccount) _then)
      : super(_value, (v) => _then(v as _$_BankAccount));

  @override
  _$_BankAccount get _value => super._value as _$_BankAccount;

  @override
  $Res call({
    Object? id = freezed,
    Object? currency = freezed,
    Object? currentAmount = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_$_BankAccount(
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
              as List<Transaction>,
    ));
  }
}

/// @nodoc

class _$_BankAccount extends _BankAccount {
  const _$_BankAccount(
      {required this.id,
      required this.currency,
      required this.currentAmount,
      required final List<Transaction> transactions})
      : _transactions = transactions,
        super._();

  @override
  final String id;
  @override
  final String currency;
  @override
  final double currentAmount;
  final List<Transaction> _transactions;
  @override
  List<Transaction> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  String toString() {
    return 'BankAccount(id: $id, currency: $currency, currentAmount: $currentAmount, transactions: $transactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankAccount &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.currentAmount, currentAmount) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(currentAmount),
      const DeepCollectionEquality().hash(_transactions));

  @JsonKey(ignore: true)
  @override
  _$$_BankAccountCopyWith<_$_BankAccount> get copyWith =>
      __$$_BankAccountCopyWithImpl<_$_BankAccount>(this, _$identity);
}

abstract class _BankAccount extends BankAccount {
  const factory _BankAccount(
      {required final String id,
      required final String currency,
      required final double currentAmount,
      required final List<Transaction> transactions}) = _$_BankAccount;
  const _BankAccount._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  double get currentAmount => throw _privateConstructorUsedError;
  @override
  List<Transaction> get transactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BankAccountCopyWith<_$_BankAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
