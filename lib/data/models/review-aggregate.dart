part of data;

@immutable
class BarModel {
  final int weight;
  final int amount;

  const BarModel({
    @required this.weight,
    @required this.amount
  });

  const BarModel.zero({
    int amount: 0
  }) : this(amount: amount, weight: 0);

  const BarModel.one({
    int amount: 0
  }) : this(amount: amount, weight: 1);

  const BarModel.two({
    int amount: 0
  }) : this(amount: amount, weight: 2);

  const BarModel.three({
    int amount: 0
  }) : this(amount: amount, weight: 3);

  const BarModel.four({
    int amount: 0
  }) : this(amount: amount, weight: 4);

  const BarModel.five({
    int amount: 0
  }) : this(amount: amount, weight: 5);

  int get value => amount * weight;
}

int _sum(int total, int value) => total + value;

@immutable
class ReviewAggregateModel {
  final int transactions;
  final int disputes;
  final List<BarModel> bars;

  const ReviewAggregateModel({
    this.transactions: 0,
    this.disputes: 0,
    this.bars: const [
      const BarModel.five(),
      const BarModel.four(),
      const BarModel.three(),
      const BarModel.two(),
      const BarModel.one(),
      const BarModel.zero()
    ]
  });

  num get disputePercent => disputes / transactions;
  num get stars => bars.map((bar) => bar.value).reduce(_sum) / totalAmount;
  num get totalAmount => bars.map((bar) => bar.amount).reduce(_sum);

  static const ReviewAggregateModel initial = const ReviewAggregateModel();
}