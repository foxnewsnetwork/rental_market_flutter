part of widgets;

class RatingsBarGraph extends StatelessWidget {
  final ReviewAggregateModel reviewAggregate;

  RatingsBarGraph({
    Key key,
    this.reviewAggregate
  }) : super(key: key);

  String get starsRounded => reviewAggregate.stars.toStringAsFixed(1);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: _buildCore(),
    );
  }

  Widget _buildCore() {
    return new Row(
      children: <Widget>[
        new Text(
          starsRounded,
          style: const TextStyle(
            fontSize: 36.0
          ),  
        ),
        new RatingStars(
          stars: reviewAggregate.stars, 
          transactions: reviewAggregate.transactions
        ),
        new RatingBars(bars: reviewAggregate.bars)
      ],
    );
  }
}