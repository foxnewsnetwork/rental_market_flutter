part of data;

@immutable
class ListingDetailRouteState {
  final String title;
  final String address;
  final List<GalleryImageModel> galleryImages;
  final List<TagModel> tags;
  final UserModel owner;
  final String productDescription;
  final ReviewAggregateModel reviews;

  final double dailyPriceRate;
  final double distanceAway;

  const ListingDetailRouteState({
    @required this.title,
    this.dailyPriceRate: 0.0,
    this.distanceAway: 0.0,
    this.address: 'Missing Address',
    this.galleryImages: const [GalleryImageModel.initial],
    this.tags: const [TagModel.initial],
    this.owner: UserModel.initial,
    this.productDescription: 'Missing Description',
    this.reviews: ReviewAggregateModel.initial
  });

  static const initial = const ListingDetailRouteState(title: 'Missing Title');
}
