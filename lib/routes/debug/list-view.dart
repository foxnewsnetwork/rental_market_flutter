part of routes;

Widget _itemBuilder(BuildContext context, int index) { 
  return new Image.asset(
    'images/dogelog.jpg',
    width: 75.0,
  );
}
class DebugListViewRoute extends StatelessWidget {
  final String title;

  DebugListViewRoute({
    Key key,
    this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: _lazyDogeListH()
    );
  }

  Widget _lazyDogeListH() {
    return new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: _itemBuilder,
    );
  }
}