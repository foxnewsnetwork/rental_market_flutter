library reducers;
import 'package:redux/redux.dart';
import './data.dart';

abstract class AppAction {
  
}

final Reducer<AppState> appReducer = combineTypedReducers([
  new ReducerBinding((AppState state, action) => state)
]);
