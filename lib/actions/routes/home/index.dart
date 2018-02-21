part of actions;

class EnableSearchHomeRouteAction implements AppAction {
  final BuildContext context;
  final VoidCallback onRemove;

  const EnableSearchHomeRouteAction({
    this.context,
    this.onRemove
  });
}

class DisableSearchHomeRouteAction implements AppAction {
  const DisableSearchHomeRouteAction();
}

class ResetSearchHomeRouteAction implements AppAction {
  const ResetSearchHomeRouteAction();
}