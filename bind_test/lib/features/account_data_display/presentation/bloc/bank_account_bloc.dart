import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/usecases/get_bank_account_data.dart';

part 'bank_account_event.dart';
part 'bank_account_state.dart';
part 'bank_account_bloc.freezed.dart';

class BankAccountBloc extends Bloc<BankAccountEvent, BankAccountState> {
  final GetBankAccountData getBankAccountData;

  BankAccountBloc(this.getBankAccountData)
      : super(const BankAccountState.loading()) {
    on<BankAccountEvent>((event, emit) async {
      event.map(
        dataRequested: (e) async {
          try {
            final bankAccountData = await getBankAccountData(e.id);
            emit(
              BankAccountState.loaded(
                bankAccountData,
                bankAccountData.currency,
                'All',
              ),
            );
          } catch (e) {
            emit(
              BankAccountState.failed(
                e.toString(),
              ),
            );
          }
        },
      );
    });
  }
}
