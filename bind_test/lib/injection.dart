import 'package:bind_test/features/account_data_display/domain/repositories/i_bank_account_repository.dart';
import 'package:bind_test/features/account_data_display/domain/usecases/get_bank_account_data.dart';
import 'package:get_it/get_it.dart';

import 'features/account_data_display/data/datasources/dummy_data_source.dart';
import 'features/account_data_display/data/repositories/bank_account_repository.dart';
import 'features/account_data_display/presentation/bloc/bank_account_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features - Account Data Display
  //Bloc
  sl.registerFactory(
    () => BankAccountBloc(sl()),
  );

  //Use cases
  sl.registerLazySingleton(
    () => GetBankAccountData(repository: sl()),
  );

  //Repository
  sl.registerLazySingleton<IBankAccountRepository>(
    () => BankAccountRepository(dataSource: sl()),
  );

  // Data sources
  sl.registerLazySingleton<IDummyDataSource>(
    () => const DummyDataSource(),
  );
}
