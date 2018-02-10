part of widgets;
/// The `ReviewButton` is a button with the reviews
/// and other such related aggregate data from users.
/// 
/// It looks like this:
/// 
/// ![](https://raw.githubusercontent.com/foxnewsnetwork/ixd-rental-market/master/journal/ch15/review-btn.png)
class ReviewButton extends StatelessWidget {
  final ReviewAggregateModel reviewAggregate;
  final VoidCallback onTap;
  final bool enabled;
  final bool selected;
  const ReviewButton({
    Key key,
    this.reviewAggregate,
    this.onTap,
    this.enabled: true,
    this.selected: true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: onTap,
      child: new Semantics(
        enabled: enabled,
        selected: selected,
        child: new Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: const Border(
              top: const BorderSide(
                color: Colors.black26
              ),
              bottom: const BorderSide(
                color: Colors.black26
              )
            )
          ),
          child: new UnconstrainedBox(
            constrainedAxis: Axis.horizontal,
            child: new SafeArea(
              top: false,
              bottom: false,
              child: new Container(
                margin: const EdgeInsets.symmetric(vertical: 5.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new DisputesPieChart(reviewAggregate: reviewAggregate),
                    new RatingsBarGraph(reviewAggregate: reviewAggregate)
                  ],
                ),
              )
            ),
          ),
        )
      ),
    );
  }
}

