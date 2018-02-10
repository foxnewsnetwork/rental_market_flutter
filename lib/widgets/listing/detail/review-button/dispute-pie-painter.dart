part of widgets;

class DisputesPieChart extends StatelessWidget {
  final ReviewAggregateModel reviewAggregate;

  DisputesPieChart({
    Key key,
    this.reviewAggregate
  }) : super(key: key);

  double get disputesPieRadians => reviewAggregate.disputePercent * PI * 2;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(left: 15.0),
      child: new Row(
        children: <Widget>[
          _buildTexts(),
          _buildPieChart()
        ],
      )
    );
  }

  Widget _buildTexts() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new Text(
            '${reviewAggregate.disputes} / ${reviewAggregate.transactions}',
            style: const TextStyle(
              fontSize: 14.0
            ),
          ),
          const Text(
            'Disputes / Total',
            style: const TextStyle(
              fontSize: 9.0
            ),
          )
        ]
      )
    );
  }

  Widget _buildPieChart() {
    return new Row(
      children: <Widget>[
        new CustomPaint(
          size: const Size(45.0, 45.0),
          painter: new PiePainter(sliceAngle: disputesPieRadians)
        )
      ],
    );
  }
}