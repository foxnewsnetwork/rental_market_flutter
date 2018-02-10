part of data;

@immutable
class HomeIndexRouteState {
  final String title;
  final HamburgerModel hamburger;
  final List<TagModel> tags;
  final List<TagModel> categories;

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
    ]
  });

  static const initial = const HomeIndexRouteState();
}
