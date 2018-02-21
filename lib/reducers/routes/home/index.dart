part of reducers;

final homeIndexRouteReducer = combineTypedReducers<HomeIndexRouteState>([
  new ReducerBinding<HomeIndexRouteState, EnableSearchHomeRouteAction>(_enableSearch),
  new ReducerBinding<HomeIndexRouteState, DisableSearchHomeRouteAction>(_disableSearch),
  new ReducerBinding<HomeIndexRouteState, ResetSearchHomeRouteAction>(_resetSearch),
]);

HomeIndexRouteState _enableSearch(HomeIndexRouteState state, EnableSearchHomeRouteAction action) {
  final BuildContext context = action.context;
  final VoidCallback onRemove = action.onRemove;

  ModalRoute.of(context).addLocalHistoryEntry(
    new LocalHistoryEntry(
      onRemove: onRemove
    )
  );
  return state.copy(
    search: state.search.copy(
      isActive: true
    )
  );
}

HomeIndexRouteState _disableSearch(HomeIndexRouteState state, DisableSearchHomeRouteAction action) {
  return state.copy(
    search: state.search.copy(
      isActive: false
    )
  );
}

HomeIndexRouteState _resetSearch(HomeIndexRouteState state, ResetSearchHomeRouteAction action) {
  return state.copy(
    search: state.search.copy(
      query: ''
    )
  );
}