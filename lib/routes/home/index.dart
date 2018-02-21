part of routes;

const double _preferredTabBarHeight = kTextTabBarHeight;
const double _preferredAppBarHeight = kToolbarHeight + kTextTabBarHeight;

class HomeIndexRoute extends StatelessWidget {
  static const String routeName = '/';

  const HomeIndexRoute({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StoreConnector(
      rebuildOnChange: false,
      converter: (Store<AppState> store) => store.state.routesState.homeIndex.categories.length,
      builder: (BuildContext context, int length) =>
        new DefaultTabController(
          length: length,
          child: _buildPage(),
        ),
    );
  }

  Widget _buildPage() {
    return new Scaffold(
      appBar: new PreferredSize(
        preferredSize: const Size.fromHeight(_preferredAppBarHeight),
        child: new StoreConnector(
          converter: (Store<AppState> store) => store.state.routesState.homeIndex.search,
          builder: (BuildContext context, SearchModel search) =>
            search.isActive ? _buildSearchBar(search) : _buildAppBar(),
        ),
      ),
      drawer: new StoreConnector(
        converter: (Store<AppState> store) => store.state.routesState.homeIndex.hamburger,
        builder: _buildHamburger,
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        child: new Icon(Icons.add),
        tooltip: 'Create a Listing',
      ),
      body: new StoreConnector(
        rebuildOnChange: false,
        converter: (Store<AppState> store) => 
          store.state.routesState.homeIndex.categories,
        builder: (BuildContext context, List<TagModel> categories) => 
          new TabBarView(
            children: categories.map(_buildPageContent).toList()
          ),
      )
    );
  }

  Widget _buildPageContent(TagModel category) {
    return new ListView(
      children: <Widget>[
        _connectChipRow(),
        _connectProductAisles(category)
      ]
    );
  }

  Widget _connectProductAisles(TagModel category) {
    return new StoreConnector(
      rebuildOnChange: false,
      converter: (Store<AppState> store) =>
        store.state.routesState.homeIndex.aisles,
      builder: (BuildContext context, List<ProductAisleModel> aisles) =>
        new Column(
          children: aisles.map((aisle) => 
            new ProductAisle(
              name: aisle.name,
              products: aisle.products,
              onTap: () {},
            )
          ).toList(),
        )
    );
  }

  Widget _connectChipRow() {
    return new StoreConnector(
      converter: (Store<AppState> store) => 
        store.state.routesState.homeIndex.tags,
      builder: (BuildContext context, List<TagModel> tags) => 
        new HomeIndexChipRow(
          children: tags.map((TagModel tag) => 
            new HomeIndexChip(
              label: new Text(tag.displayName),
              onTap: () {
              }
            )
          ).toList(),
        ),
    );
  }

  Widget _buildHamburger(BuildContext context, HamburgerModel hamburger) {
    return new HamburgerMenu(
      user: hamburger.user,
      notifications: hamburger.notifications,
      onPressed: (String routeName) {
        Navigator.of(context).pushNamed(routeName);
      }
    );
  }

  Widget _buildSearchBar(SearchModel search) {
    final TextEditingController queryController = new TextEditingController(text: search.query);

    return new AppBar(
      leading: new BackButton(
        color: Colors.blueAccent
      ),
      backgroundColor: Colors.white,
      title: new TextField(
        autofocus: true,
        decoration: const InputDecoration(
          hintText: 'Search listings...'
        ),
        controller: queryController,
      )
    );
  }
  Widget _buildAppBar() {
    return new AppBar(
      title: new StoreConnector(
        converter: (Store<AppState> store) => store.state.routesState.homeIndex.title,
        builder: (BuildContext context, title) => new Text(title),
      ),
      bottom: new PreferredSize(
        preferredSize: const Size.fromHeight(_preferredTabBarHeight),
        child: new StoreConnector(
          converter: (Store<AppState> store) =>
            store.state.routesState.homeIndex.categories,
          builder: (BuildContext context, List<TagModel> categories) =>
            new TabBar(
              isScrollable: true,
              tabs: categories.map((tag) => new Tab(text: tag.displayName)).toList(),
            )
        ),
      ),
      actions: <Widget>[
        new StoreConnector(
          converter: (Store<AppState> store) => 
            (BuildContext context) => store.dispatch(
              new EnableSearchHomeRouteAction(
                context: context,
                onRemove: () => store.dispatch(const DisableSearchHomeRouteAction())
              )
            ),
          builder: (BuildContext context, ContextCallback onPressed) =>
            new IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => onPressed(context),
            )
        ),
      ],
    );
  }
}