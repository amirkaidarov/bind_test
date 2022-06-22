import 'package:bind_test/features/account_data_display/domain/entities/bank_account.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/transaction.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.transaction,
    required this.bankAccountData,
  }) : super(key: key);

  final Transaction transaction;
  final BankAccount bankAccountData;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    final transactionIcon = transaction.isPerson
        ? (Center(
            child: transaction.isIncoming
                ? const Icon(
                    Icons.arrow_back_rounded,
                    size: 30,
                  )
                : const Icon(
                    Icons.arrow_forward_rounded,
                    size: 30,
                  ),
          ))
        : CircleAvatar(
            foregroundImage: AssetImage(transaction.senderOrRecipientIcon),
            backgroundColor: Colors.white,
          );

    return Card(
      elevation: 1.0,
      margin: const EdgeInsets.symmetric(vertical: 1.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: theme.colorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: transactionIcon,
        ),
        title: Text(
          transaction.senderOrRecipient,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
        subtitle: Text(
          transaction.dateTime.toString().substring(11, 16),
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        trailing: Text(
          transaction.isIncoming
              ? '+ ${transaction.amount.toStringAsFixed(2)} ${bankAccountData.currency}'
              : '- ${transaction.amount.toStringAsFixed(2)} ${bankAccountData.currency}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
