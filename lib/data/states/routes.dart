part of data;

@immutable
class RoutesState {
  final HomeIndexRouteState homeIndex;
  final ListingDetailRouteState listingDetail;

  const RoutesState({
    this.homeIndex: HomeIndexRouteState.initial,
    this.listingDetail: ListingDetailRouteState.initial,
  });

  static const initial = const RoutesState();
}

