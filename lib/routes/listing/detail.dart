part of routes;

class ListingDetailRoute extends StatelessWidget {
  static const String routeName = '/listing/:id/detail';

  const ListingDetailRoute({Key key}) : super(key: key);

  Widget _connectTitle() {
    return new StoreConnector(
      converter: (Store<AppState> store) => store.state.routesState.listingDetail.title,
      builder: (BuildContext context, String title) => new Text(title),
    );
  }

  Widget _connectDetailHeader() => new StoreConnector(
    converter: (Store<AppState> store) => 
      store.state.routesState.listingDetail,
    builder: (BuildContext context, ListingDetailRouteState state) => 
      new DetailHeader(
        title: state.title,
        dailyPriceRate: state.dailyPriceRate,
        distanceAway: state.distanceAway
      ),
  );

  Widget _connectAddressButton() => new StoreConnector(
    converter: (Store<AppState> store) =>
      store.state.routesState.listingDetail.address,
    builder: (BuildContext context, String address) =>
      new AddressMapButton(
        address: address,
        onPressed: () {},
      ),
  );

  Widget _connectGalleryPreview() => new StoreConnector(
    converter: (Store<AppState> store) =>
      store.state.routesState.listingDetail.galleryImages,

    builder: (BuildContext context, List<GalleryImageModel> images) =>
      new GalleryPreview(
        seeAllPressed: () {},
        imageURIs: images.map((image) => image.previewImage).toList(),
      ),
  );

  Widget _connectTagsGallery() => new StoreConnector(
    converter: (Store<AppState> store) =>
      store.state.routesState.listingDetail.tags,
    builder: (BuildContext context, List<TagModel> tags) =>
      new TagsGallery(
        onPressed: () {},
        tags: tags
      ),
  );

  Widget _connectUserBlurb() => new StoreConnector(
    converter: (Store<AppState> store) =>
      store.state.routesState.listingDetail.owner,
    builder: (BuildContext context, UserModel user) => 
      new UserBlurb(
        onPressed: (){},
        user: user,
      )
  );

  Widget _connectProductDescription() => new StoreConnector(
    converter: (Store<AppState> store) =>
      store.state.routesState.listingDetail.productDescription,
    builder: (BuildContext context, String description) =>
      new ProductDescription(
        description: description
      ),
  );

  Widget _connectReviewButton() => new StoreConnector(
    converter: (Store<AppState> store) =>
      store.state.routesState.listingDetail.reviews,
    builder: (BuildContext context, ReviewAggregateModel reviews) =>
      new ReviewButton(
        onTap: () {},
        reviewAggregate: reviews
      ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: _connectTitle(),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.more_vert),
            tooltip: 'Side menu',
            onPressed: () {},
          )
        ],
      ),
      body: new ListView(
        children: <Widget>[
          _connectDetailHeader(),
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: new HorizontalNav(
              sharePressed: () {},
              bookmarkPressed: () {},
              rentPressed: () {}
            )
          ),
          _connectAddressButton(),
          _connectGalleryPreview(),
          _connectTagsGallery(),
          _connectUserBlurb(),
          _connectProductDescription(),
          _connectReviewButton()
        ],
      )
    );
  }
}

