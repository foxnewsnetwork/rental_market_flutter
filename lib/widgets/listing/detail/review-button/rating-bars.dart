part of widgets;

int _compareBars(BarModel b1, BarModel b2) {
  return b1.value.compareTo(b2.value);
}

List<T> _sort<T>(List<T> bars, int compFn(T t1, T t2)) {
  return bars.sublist(0)..sort(compFn);
}

const _minimumAmount = 0.05;
num _minDivide(num a, num b) {
  if (b == 0.0) {
    return _minimumAmount;
  } else {
    return max(_minimumAmount, a / b);
  }
}

class RatingBars extends StatelessWidget {
  final List<BarModel> bars;
  static const Map<int, Color> barColors = const {
    5: Colors.green,
    4: Colors.lightGreen,
    3: Colors.yellow,
    2: Colors.orange,
    1: Colors.red
  };

  RatingBars({
    Key key,
    @required this.bars
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int maxBarAmount = _sort(bars, _compareBars).last.amount;
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: bars.map((bar) => new _RatingBar(
        color: barColors[bar.weight],
        widthFactor: _minDivide(bar.amount, maxBarAmount),
      )).toList(),
    );
  }
}


class _RatingBar extends StatelessWidget {
  final Color color;
  final double widthFactor;
  static const double maxWidth = 70.0;

  _RatingBar({
    Key key,
    @required this.color,
    @required this.widthFactor
  }) : super(key: key);

  double get width => widthFactor * maxWidth;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: color,
      height: 5.0,
      width: width,
      child: const Text('')
    );
  }
}