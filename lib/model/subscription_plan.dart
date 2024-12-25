class SubscriptionPlan {
  final String price;
  final String period;
  final String duration;
  final String? monthlyPrice;
  final bool isHighlighted;

  const SubscriptionPlan({
    required this.price,
    required this.period,
    required this.duration,
    this.monthlyPrice,
    this.isHighlighted = false,
  });

  static final List<SubscriptionPlan> plans = [
    const SubscriptionPlan(
      price: '35.00',
      period: 'week',
      duration: '1 Week',
    ),
    const SubscriptionPlan(
      price: '58.00',
      period: 'month',
      duration: '1 Month',
    ),
    const SubscriptionPlan(
      price: '253.00',
      period: 'year',
      duration: '1 Year',
      monthlyPrice: '21.08',
      isHighlighted: true,
    ),
  ];
}
