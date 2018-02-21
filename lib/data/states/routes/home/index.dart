part of data;

@immutable
class HomeIndexRouteState {
  final String title;
  final HamburgerModel hamburger;
  final List<TagModel> tags;
  final List<TagModel> categories;
  final List<ProductAisleModel> aisles;
  final SearchModel search;

  const HomeIndexRouteState({
    this.title: 'Rental Market',
    this.hamburger: HamburgerModel.initial,
    this.tags: const <TagModel>[
      const TagModel(displayName: 'Top Categories'),
      const TagModel(displayName: 'Nearby')
    ],
    this.categories: const <TagModel>[
      const TagModel(displayName: 'Home'),
      const TagModel(displayName: 'Kitchen'),
      const TagModel(displayName: 'Power Tools'),
      const TagModel(displayName: 'Sensors'),
    ],
    this.aisles: const <ProductAisleModel>[
      ProductAisleModel.initial,
      ProductAisleModel.initial,
      ProductAisleModel.initial,
      ProductAisleModel.initial,
      ProductAisleModel.initial,
      ProductAisleModel.initial,
    ],
    this.search: const SearchModel()
  });

  HomeIndexRouteState copy({
    String title,
    HamburgerModel hamburger,
    List<TagModel> tags,
    List<TagModel> categories,
    List<ProductAisleModel> aisles,
    SearchModel search,
  }) {
    return new HomeIndexRouteState(
      title: title ?? this.title,
      hamburger: hamburger ?? this.hamburger,
      tags: tags ?? this.tags,
      categories: categories ?? this.categories,
      aisles: aisles ?? this.aisles,
      search: search ?? this.search,
    );
  }

  static const initial = const HomeIndexRouteState();
}
