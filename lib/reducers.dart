library reducers;
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import './data.dart';
import './actions.dart';

part './reducers/routes/home/index.dart';

AppState appReducer(AppState state, AppAction action) {
  return new AppState(
    routesState: new RoutesState(
      homeIndex: homeIndexRouteReducer(state.routesState.homeIndex, action),
    )
  );
}