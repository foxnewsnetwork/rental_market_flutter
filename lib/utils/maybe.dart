part of utils;

typedef Out MapFn<In, Out>(In i);

/// # Functional Programming Functor
/// Maybes are way of handling typed `nulls`
/// Consider the following usage:
/// 
/// ```dart
/// class MenuLink {
///   final Maybe<Notification> mNotification;
/// 
///   MenuLink({
///     this.mNotification: const Nothing()
///   });
/// 
///   Maybe<Widget> build() {
///     return mNotification.fmap((notification) => new Container(
///       child: notification
///     ));
///   }
/// }
/// ```
/// 
/// This is still experimental as I try to
/// figure out how the flutter framework should
/// render `Nothing<Widget>`s 
abstract class Maybe<T> {
  Maybe<T2> fmap<T2>(MapFn<T, T2> mapFn);
}

class Just<T> implements Maybe<T> {
  final T payload;

  const Just(this.payload);

  @override
  Just<U> fmap<U>(MapFn<T, U> mapFn) { 
    return new Just(mapFn(payload));
  }
}

class Nothing<T> implements Maybe<T> {
  const Nothing();

  @override
  Nothing<U> fmap<U>(MapFn<T, U> mapFn) {
    return new Nothing();
  }
}