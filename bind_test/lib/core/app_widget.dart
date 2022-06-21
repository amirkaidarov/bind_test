import 'package:bind_test/core/theme.dart';
import 'package:bind_test/features/account_data_display/presentation/bloc/bank_account_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/account_data_display/presentation/pages/account_data_display_page.dart';
import '../injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<BankAccountBloc>()
            ..add(
              const BankAccountEvent.dataRequested('id1'),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'BIND TEST',
        theme: lightThemeData(context),
        debugShowCheckedModeBanner: false,
        home: const AccountDataDisplayPage(),
      ),
    );
  }
}
