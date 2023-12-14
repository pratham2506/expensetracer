import 'package:expensetracer/data/user_info.dart';
import 'package:expensetracer/utils/constants.dart';
import 'package:expensetracer/widgets/income_expense_card.dart';
import 'package:expensetracer/widgets/transaction_item_title.dart';
import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: defaultSpacing,
          ),
          ListTile(
            title: Text("Hey! ${userdata.name}"),
            leading: ClipRRect(
                borderRadius:
                    const BorderRadius.all(Radius.circular(defaultRadius)),
                child: Image.asset("assets/images/avatar.jpeg")),
            trailing: Image.asset("assets/icons/bell.png"),
          ),
          const SizedBox(
            height: defaultSpacing,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "${userdata.totalBalance}",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: fontSizeHeading, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: defaultSpacing / 2,
                ),
                Text(
                  "Total Balance",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: fontSubHeading),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: defaultSpacing * 2,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: IncomeExpenseCard(
                expenseData: ExpenseData(
                    "Income", "${userdata.inflow}", Icons.arrow_upward_rounded),
              )),
              SizedBox(
                width: defaultSpacing,
              ),
              Expanded(
                  child: IncomeExpenseCard(
                expenseData: ExpenseData("Expense", "-${userdata.outflow}",
                    Icons.arrow_downward_rounded),
              )),
            ],
          ),
          const SizedBox(
            height: defaultSpacing / 2,
          ),
          Text("Recent Transactions",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(
            height: defaultSpacing,
          ),
          const Text(
            "Today",
            style: TextStyle(color: fontSubHeading),
          ),
          ...userdata.transactions.map(
              (transaction) => TransactionItemTile(transaction: transaction)),
          const SizedBox(
            height: defaultSpacing,
          ),
          const Text(
            "Yesterday",
            style: TextStyle(color: fontSubHeading),
          ),
          ...transcations2.map(
              (transaction) => TransactionItemTile(transaction: transaction)),
        ]),
      ),
    );
  }
}
