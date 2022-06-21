part of 'bank_account_bloc.dart';

@freezed
class BankAccountEvent with _$BankAccountEvent {
  const factory BankAccountEvent.dataRequested(String id) = _Started;
}