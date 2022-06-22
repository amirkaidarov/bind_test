import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bank_account_bloc.dart';
import '../widgets/account_header_widget.dart';
import '../widgets/transactions_list_view_widget.dart';

class AccountDataDisplayPage extends StatelessWidget {
  const AccountDataDisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.arrow_left),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.arrow_left ),
          )
        ],
      ),
      body: BlocBuilder<BankAccountBloc, BankAccountState>(
        builder: (context, state) {
          return state.map(
            loaded: (s) => Column(
              children: [
                AccountHeader(
                  bankAccountData: s.bankAccountData,
                  currency: s.currency,
                  someOtherOption: s.someOtherOption,
                ),
                Expanded(
                  child:
                      TransactionListView(bankAccountData: s.bankAccountData),
                ),
              ],
            ),
            loading: (s) => const Center(
              child: CircularProgressIndicator(),
            ),
            failed: (s) => const SizedBox(),
          );
        },
      ),
    );
  }
}
