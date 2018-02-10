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

  Widget _dogeList() {
    return new ListView(
      children: <Widget>[
        new Image.asset('images/dogelog.jpg'),
        new Image.asset('images/dogelog.jpg'),
        new Image.asset('images/dogelog.jpg'),
        new Image.asset('images/dogelog.jpg'),
        new Image.asset('images/dogelog.jpg')
      ],
    );
  }

  Widget _lazyDogeList() {
    return new ListView.builder(
      itemCount: 3,
      itemBuilder: _itemBuilder,
    );
  }

  Widget _mixedLazyList() {
    return new ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) { 
        if (index % 2 == 0) {
          return new Image.asset('images/dogelog.jpg');
        } else {
          return new Text('images/dogelog.jpg');
        }
      },
    );
  }
}