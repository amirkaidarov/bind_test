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

  String mapCurrencyToAccountIcon(String currency) {
    const Map<String, String> currencyToIconMap = {
      'USD': 'assets/images/usa_flag.png',
    };
    return currencyToIconMap[currency] as String;
  }

  String mapCurrencyToIcon(String currency) {
    const Map<String, String> currencyToIconMap = {
      'USD': '\$',
      'EUR': '€',
    };
    return currencyToIconMap[currency] as String;
  }

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
            CircleAvatar(
              radius: 35,
              foregroundImage: AssetImage(
                mapCurrencyToAccountIcon(bankAccountData.currency),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  child: Center(
                    child: Text(
                      '${bankAccountData.currency} Account',
                      style: TextStyle(
                        color: theme.colorScheme.secondary,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                          ),
                          child: const Text(
                            'Hide',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              '${mapCurrencyToIcon(bankAccountData.currency)} ${bankAccountData.currentAmount.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}',
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
