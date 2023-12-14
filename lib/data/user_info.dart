enum TransactionType { outflow, inflow }

enum ItemCategoryType { fashion, grocery, payments }

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;
  const UserInfo(
      {required this.name,
      required this.totalBalance,
      required this.inflow,
      required this.outflow,
      required this.transactions});
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(this.amount, this.categoryType, this.date,
      this.itemCategoryName, this.itemName, this.transactionType);
}

const List<Transaction> transcations1 = [
  Transaction("\$1,950.00", ItemCategoryType.fashion, "Oct, 23", "Shoes",
      "Puma Sneakers", TransactionType.outflow),
  Transaction("\$11,950.00", ItemCategoryType.fashion, "Sept, 23", "Bag",
      "Gucci Bag", TransactionType.outflow)
];

const List<Transaction> transcations2 = [
  Transaction("\$5,000.00", ItemCategoryType.payments, "Oct, 2", "Payment",
      "Payment from Jack", TransactionType.inflow),
  Transaction("\$150.00", ItemCategoryType.grocery, "Oct, 12", "Food",
      "Chicken", TransactionType.outflow),
  Transaction("\$15,000.00", ItemCategoryType.payments, "Oct, 1", "Rent",
      "House Rent", TransactionType.outflow),
  Transaction("\$50.00", ItemCategoryType.grocery, "Sept, 09", "Vegies",
      "Tomatos & Lettuce", TransactionType.outflow)
];

const userdata = UserInfo(
    name: "Jacob",
    totalBalance: "\$4,586.00",
    inflow: "\$4,000.00",
    outflow: "\$2000.00",
    transactions: transcations1);
