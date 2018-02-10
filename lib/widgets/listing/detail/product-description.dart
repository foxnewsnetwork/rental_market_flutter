part of widgets;

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({
    Key key,
    @required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(7.0),
      child: new Text(
        description, 
        style: const TextStyle(
          fontSize: 15.0,
          color: Colors.black
        )
      )
    );
  }
}