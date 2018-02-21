# Material App Bar Search

Search is an ultra typical functionaity in the modern world, so naturally a phone app must support it.

In this chapter, we will learn:

- `BackButton`
- `Navigation` push stack
- `Redux` dispatch
- Rigging up `Reducer` and `Action`
- `.copy()` constructors

## AppBar

Consider the material example of the [app bar in search form here](https://github.com/flutter/flutter/blob/master/examples/stocks/lib/stock_home.dart#L283):

```dart
Widget buildSearchBar() {
    return new AppBar(
      leading: new BackButton(
        color: Theme.of(context).accentColor,
      ),
      title: new TextField(
        controller: _searchQuery,
        autofocus: true,
        decoration: const InputDecoration(
          hintText: 'Search stocks',
        ),
      ),
      backgroundColor: Theme.of(context).canvasColor,
    );
  }

```

Notably that the `title` field can be replaced with a `TextField` instead of a `Text`

## BackButton

The `BackButton` [documented here](https://docs.flutter.io/flutter/material/BackButton-class.html) provides a wrapper around popping things off of the navigator history stack.

You would think that integrating the `BackButton` with redux would be exceedingly tricky since we have no way of letting the `BackButton` know what else it should do in addition to popping the history stack. However, because `LocalHistoryEntry` has an `onRemove` callback, we can safely use that to affect an additional redux dispatch.

```dart
converter: (Store<AppState> store) => 
  (BuildContext context) => store.dispatch(
    new EnableSearchHomeRouteAction(
      context: context,
      onRemove: () => store.dispatch(const DisableSearchHomeRouteAction())
    )
  ),
```

## TextField

The material `TextField` is a wrapper around [input consumption](https://docs.flutter.io/flutter/material/TextField-class.html), the docs go over how to use it. The `TextEditingController` and the combination of `onChange` and `onSubmitted` hooks provide for both DDAU and traditional observational apis


## Dispatch

In order to use the `BackButton` (which unpops the history stack), we need to first push it with `addLocalHistoryEntry` which is a member of the `ModalRoute` instance:

[See the example usage case here](https://github.com/flutter/flutter/blob/master/examples/stocks/lib/stock_home.dart#L70)

```dart
ModalRoute.of(context).addLocalHistoryEntry(new LocalHistoryEntry(
  onRemove: () {
    setState(() {
      _isSearching = false;
      _searchQuery.clear();
    });
  },
));
```

Notice the `ModalRoute` more on this later when we cover `PageRoute`, `MaterialPageRoute`, and `CupertinoPageRoute`

## Container Delegates

Consider the `container` delegate components in [the todo example](https://gitlab.com/brianegan/flutter_architecture_samples/blob/master/example/redux/lib/containers/add_todo.dart)

## Copy With

How do we tell dart to make shallow copies? We can't, instead we must manually write `.copy()` constructors on all our data classes like the [example here](https://gitlab.com/brianegan/flutter_architecture_samples/blob/master/example/redux/lib/models/app_state.dart#L19)

```dart
class AppState {
  AppState copyWith({
    bool isLoading,
    List<Todo> todos,
    AppTab activeTab,
    VisibilityFilter activeFilter,
  }) {
    return new AppState(
      isLoading: isLoading ?? this.isLoading,
      todos: todos ?? this.todos,
      activeTab: activeTab ?? this.activeTab,
      activeFilter: activeFilter ?? this.activeFilter,
    );
  }
}
```

<del>
I choose to do this as an `interface` using `abstract class` `Copyable` like so:

```dart
abstract class Copyable<T> {
  T copy(T model);
}
```

And this is implemented in the `HomeIndexRouteState` object like so:

```dart
@override
HomeIndexRouteState copy(HomeIndexRouteState other) {
  return new HomeIndexRouteState(
    title: other.title ?? title,
    hamburger: other.hamburger ?? hamburger,
    tags: other.tags ?? tags,
    categories: other.categories ?? categories,
    aisles: other.aisles ?? aisles,
    isSearch: other.isSearch ?? isSearch,
  );
}
```
</del>

After experimenting with using `abstract class Copyable`, I discovered that I have no sensible way of typing the `Copyable` class. This is a weakness of the dart type system and cannot be overcome. I will thus just have a `copy()` method on all the states where it's relevant