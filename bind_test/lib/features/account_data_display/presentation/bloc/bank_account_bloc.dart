import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/i_bank_account_repository.dart';

part 'bank_account_event.dart';
part 'bank_account_state.dart';
part 'bank_account_bloc.freezed.dart';

class BankAccountBloc extends Bloc<BankAccountEvent, BankAccountState> {
  final IBankAccountRepository repository;

  BankAccountBloc(this.repository) : super(const BankAccountState.loading()) {
    on<BankAccountEvent>((event, emit) async {
      event.map(dataRequested: (e) async {
        final bankAccountData = await repository.getBankAccountData(e.id);
        emit(BankAccountState.loaded(
          bankAccountData,
          bankAccountData.currency,
          'All',
        ));
      });
    });
  }
}
