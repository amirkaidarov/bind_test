import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'package:bind_test/features/account_data_display/presentation/widgets/transaction_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class TransactionListView extends StatelessWidget {
  final BankAccount bankAccountData;
  const TransactionListView({
    Key? key,
    required this.bankAccountData,
  }) : super(key: key);

  String getGroupTitle(transactionDateString) {
    final currentDate = DateTime(2021, 12, 13);
    final transactionDate = DateTime.parse(transactionDateString);
    final dayDiff = currentDate.difference(transactionDate).inDays;

    if (dayDiff == 0) {
      return 'Today';
    } else if (dayDiff == 1) {
      return "Yesterday";
    } else {
      final transactinoDayOfWeek =
          DateFormat('EEE').format(transactionDate).toString();
      final transactionMonthShortened =
          DateFormat('MMM').format(transactionDate).toString();
      return '$transactinoDayOfWeek, $transactionMonthShortened ${transactionDate.day}';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return GroupedListView<dynamic, String>(
      elements: bankAccountData.transactions,
      groupBy: (transaction) => transaction.dateTime.substring(0, 10),
      groupComparator: (transaction1, transaction2) =>
          transaction2.compareTo(transaction1),
      itemComparator: (transaction1, transaction2) =>
          transaction2.dateTime.compareTo(transaction1.dateTime),
      order: GroupedListOrder.ASC,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (String value) => Container(
        color: theme.secondary,
        padding: const EdgeInsets.all(20.0),
        child: Text(
          getGroupTitle(value),
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      itemBuilder: (c, transaction) => TransactionTile(
        transaction: transaction,
        bankAccountData: bankAccountData,
      ),
    );
  }
}
