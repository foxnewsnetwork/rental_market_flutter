part of widgets;

class RatingStars extends StatelessWidget {
  final num stars;
  final int transactions;

  RatingStars({
    Key key,
    this.stars: 0,
    this.transactions: 0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildStars(),
        _buildSubtitle()
      ],
    );
  }

  Widget _buildStars() {
    List<IconData> icons = [];
    for (int i = 0; i < 5; i++) {
      if (stars - i >= 1) {
        icons.add(Icons.star);
      } else if (stars - i <= 0) {
        icons.add(Icons.star_border);
      } else {
        icons.add(Icons.star_half);
      }
    }
    return new Row(
      children: icons.map((icon) => new Icon(icon, size: 6.0)).toList(),
    );
  }

  Widget _buildSubtitle() {
    return new Row(
      children: <Widget>[
        new Text(
          transactions.toString(), 
          style: const TextStyle(
            fontSize: 8.0
          )
        ),
        new Icon(
          Icons.verified_user,
          size: 8.0
        )
      ],
    );
  }
}