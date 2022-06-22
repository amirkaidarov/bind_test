import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

final List<String> currencies = [
  'USD Dollar',
  'EUR Euro',
  'JPY Japanese yen',
  'GBP Pound sterling',
];

final List<String> someOtherOptions = [
  'All',
  'Most of',
  'Some',
  'A few',
  'None',
];

String? selectedCurrency;
String? selectedOtherOption;

class TransactionHistoryBar extends StatelessWidget {
  const TransactionHistoryBar({
    Key? key,
    required this.initialCurrency,
    required this.initialSomeOtherOption,
  }) : super(key: key);

  final String initialCurrency;
  final String initialSomeOtherOption;

  String mapShortToFullCurrency(String shortCurrency) {
    const Map<String, String> shortToFullMap = {
      'USD': 'USD Dollar',
      'EUR': 'EUR Euro',
      'JPY': 'JPY Japanese yen',
      'GBP': 'GBP Pound sterling',
    };
    return shortToFullMap[shortCurrency] as String;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    selectedCurrency = initialCurrency;
    selectedOtherOption = initialSomeOtherOption;

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 10),
              child: Text(
                'Transactions History',
                style: TextStyle(color: theme.scaffoldBackgroundColor),
              ),
            ),
            const Spacer(),
          ],
        ),
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 5,
                ),
                child: DropdownButtonFormField2(
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: theme.colorScheme.tertiary,
                    ),
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                  ),
                  isExpanded: true,
                  value: mapShortToFullCurrency(initialCurrency),
                  style: TextStyle(
                    fontSize: 14,
                    color: theme.scaffoldBackgroundColor,
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                  ),
                  iconSize: 30,
                  buttonHeight: 50,
                  dropdownMaxHeight: 150,
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: theme.colorScheme.primary,
                    border: Border.all(
                      color: theme.colorScheme.tertiary,
                    ),
                  ),
                  items: currencies
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) => selectedCurrency = value.toString(),
                  onSaved: (value) => selectedCurrency = value.toString(),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15,
                        top: 5,
                        bottom: 15,
                      ),
                      child: DropdownButtonFormField2(
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: theme.colorScheme.tertiary,
                          ),
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                        ),
                        isExpanded: true,
                        value: selectedOtherOption,
                        style: TextStyle(
                          fontSize: 14,
                          color: theme.scaffoldBackgroundColor,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                        ),
                        iconSize: 30,
                        buttonHeight: 50,
                        dropdownMaxHeight: 150,
                        buttonPadding: const EdgeInsets.only(
                          left: 20,
                          right: 10,
                        ),
                        dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: theme.colorScheme.primary,
                          border: Border.all(
                            color: theme.colorScheme.tertiary,
                          ),
                        ),
                        items: someOtherOptions
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        onChanged: (value) =>
                            selectedOtherOption = value.toString(),
                        onSaved: (value) =>
                            selectedOtherOption = value.toString(),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 15.0, top: 5, bottom: 15),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.calendar_month),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
