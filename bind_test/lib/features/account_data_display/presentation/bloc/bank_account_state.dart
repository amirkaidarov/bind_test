part of 'bank_account_bloc.dart';

@freezed
class BankAccountState with _$BankAccountState {
  const factory BankAccountState.loading() = _Loading;
  const factory BankAccountState.loaded(
    BankAccount bankAccountData,
    String currency,
    String someOtherOption,
  ) = _Loaded;
  const factory BankAccountState.failed(String message) = _Failed;
}
