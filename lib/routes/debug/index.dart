part of routes;

class DebugIndexRoute extends StatefulWidget {
  DebugIndexRoute({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _DebugIndexRouteState createState() => new _DebugIndexRouteState();
}

void _gotoDebug(BuildContext context) {
  Navigator.of(context).pushNamed('/debug');
}

void _gotoListingDetail(BuildContext context) {
  Navigator.of(context).pushNamed('/listing/666/detail');
}

void _gotoDebugListView(BuildContext context) {
  Navigator.of(context).pushNamed('/debug/list-view');
}

void _gotoDebugHamburger(BuildContext context) {
  Navigator.of(context).pushNamed('/debug/hamburger');
}

class _DebugIndexRouteState extends State<DebugIndexRoute> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the DebugIndexRoute object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            new RaisedButton(
              onPressed: () { _gotoDebug(context); },
              child: new Text(
                'Debug Room'
              ),
            ),
            new RaisedButton(
              onPressed: () { _gotoListingDetail(context); },
              child: new Text('Listing Detail')
            ),
            new RaisedButton(
              onPressed: () { _gotoDebugListView(context); },
              child: new Text('Debug List View'),
            ),
            new RaisedButton(
              onPressed: () { _gotoDebugHamburger(context); },
              child: new Text('Hamburger Debug')
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
