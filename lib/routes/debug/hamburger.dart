part of routes;

class DebugHamburgerRoute extends StatelessWidget {

  DebugHamburgerRoute({
    Key key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Hamburger Menu Debug'),
      ),
      body: new Container(
        width: 275.0,
        child: new HamburgerMenu(
          user: new UserModel(
            fullName: 'Doge McMasters'
          ),
          onPressed: (String routeName) { },
        )
      )
    );
  }
}