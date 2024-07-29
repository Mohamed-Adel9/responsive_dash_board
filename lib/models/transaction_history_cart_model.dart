class TransactionHistoryCartModel {
  final String title;
  final String subtitle;
  final String trailing;
  final bool isWithdrawal;

  TransactionHistoryCartModel({
    required this.isWithdrawal,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
}
