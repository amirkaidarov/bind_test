import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'package:flutter/material.dart';

import '../widgets/transaction_history_bar_widget.dart';

class AccountHeader extends StatelessWidget {
  const AccountHeader({
    Key? key,
    required this.bankAccountData,
    required this.currency,
    required this.someOtherOption,
  }) : super(key: key);

  final BankAccount bankAccountData;
  final String currency;
  final String someOtherOption;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Container(
      color: theme.primaryColor,
      height: size.height * 0.5,
      child: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 35,
              foregroundImage: AssetImage('assets/images/usa_flag.png'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(flex: 3),
                Text(
                  '${bankAccountData.currency} Account',
                  style: TextStyle(
                    color: theme.colorScheme.secondary,
                  ),
                ),
                const Spacer(flex: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Hide'),
                  ),
                ),
              ],
            ),
            Text(
              '\$ ${bankAccountData.currentAmount.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}',
              style: TextStyle(
                color: theme.scaffoldBackgroundColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            TransactionHistoryBar(
              initialCurrency: currency,
              initialSomeOtherOption: someOtherOption,
            ),
          ],
        ),
      ),
    );
  }
}
