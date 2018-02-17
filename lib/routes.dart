library routes;
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './widgets.dart';
import './data.dart';
import './reducers.dart';

part './routes/debug/hamburger.dart';
part './routes/debug/icons.dart';
part './routes/debug/index.dart';
part './routes/debug/list-view.dart';
part './routes/home/index.dart';
part './routes/listing/detail.dart';

class AppRouter {
  final Router router = new Router();
  final Store<AppState> store = new Store(appReducer, initialState: AppState.initial);

  static AppRouter _instance;

  factory AppRouter() { 
    if (_instance != null) {
      return _instance;
    }
    _instance = new AppRouter._map();
    return _instance;
  }

  Handler _buildRouteHandler({ Widget route }) {
    return new Handler(
      type: HandlerType.route,
      handlerFunc: (BuildContext context, Map<String, dynamic> params) {
        return new StoreProvider(
          store: store,
          child: route
        );
      }
    );
  }

  AppRouter._map() {
    router.define(
      HomeIndexRoute.routeName,
      handler: _buildRouteHandler(route: new HomeIndexRoute())
    );
    router.define(
      ListingDetailRoute.routeName,
      handler: _buildRouteHandler(route: new ListingDetailRoute())
    );
    router.define(
      'debug/hamburger',
      handler:  new Handler(
        type: HandlerType.route,
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new DebugHamburgerRoute();
        }
      )
    );
    router.define(
      '/debug', 
      handler: new Handler(
        type: HandlerType.route, 
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          
          return new DebugIndexRoute(title: 'debug room');
        }
      )
    );
    router.define(
      '/debug/list-view',
      handler: new Handler(
        type: HandlerType.route,
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new DebugListViewRoute(title: 'debug list view');
        }
      )
    );
    
  }

  Route<Null> generator(RouteSettings routeSettings) => router.generator(routeSettings);
}