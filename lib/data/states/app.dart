part of data;

@immutable
class AppState {
  final RoutesState routesState;
  final String title;

  const AppState({
    this.routesState: RoutesState.initial,
    this.title: 'Rental Market',
  });

  static const initial = const AppState();
}
