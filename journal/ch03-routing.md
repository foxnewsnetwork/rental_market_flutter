# Routing

The idea of routes and pages we inherit from our past as a web developer carries over to development in flutter. Currently, however, flutter doesn't support dynamic routing. Notably, something like the following won't work:

```dart
route('/listing/:id/detail', () { ... })
```

But of course, we're going to need dynamic routing in our app, and going through the existing libraries, we encounter [fluro](https://github.com/goposse/fluro) which we will use to solve our problems


## Setup

Unlike Ember and other more opinionated frameworks, fluro pretends (lol) to be unopinionated with regards to how the developer should use the exposed router. This, of course, provides a less than ideal interface but after exploring for a good several hours regarding how to use the thing, here's what I came up with:

First, I've setup a `routes.dart` file that defines my routes

```dart
class Routes { 
  static void setup(Router router) {
    router.define(
      '/debug',
      handler: new Handler(
        type: HandlerType.route, 
        handlerFunc: (BuildContext context, Map<String, dynamic> params) {
          return new DebugRoute(title: 'debug room');
        }
      )
    );
  }
}
```

And then we use a stateful app in `app.dart` to actually setup our routes; personally, I think this is less than idea, and would therefore like to go back to a stateless widget app.

**note to self**: experiment with improving the fluro router to something that makes more sense, and extract it into its own thing

## Route Route types
In Fluro, there's a difference between using `HandlerType.route` and `HandlerType.function`, but gist of this is that there are actually 2 distinct types of route handlers. The `route` handler type expects a handler that returns a `Widget` (which fluro wraps in a `Route<T>` via the `RoutePageBuilder<Null>`)

In general, if I want my route to render a widget, I should use the `.route` HandlerType

## Function Route Types
Conversely, if I want my route to perform some non-visual, action, this is where the `function` handler type comes in. I don't see myself using this ever since action performed is a side-effect action with no way to get results from. This is probably bad design on fluro's part, but I can only know for sure once I use this framework more

## Concepts

Flutter (and fluro)'s definition of routing is slightly more different than what I'm used to coming from an ember/rails world. Here are some of the differences:

### Routes and returns

In flutter, `Route<T>` is the basic `abstract` route type, but what is the significance of the `<T>`? As it turns out, the design of routing in flutter is that routes can and do return stuff. The design decision probably comes from the idea that certain modal routes will prompt the user for input, and thus would make sense if routes can be wrappers over objects that can also carry user input.

**note to self**: it's probably in my best interst to recognize that, because routes are a vehicle of user interaction in flutter, the fluro API is probably less than ideal because it fails to capture this use case. I probably should keep this in mind while developing and eventually come up with a better router.

### Fluro's bad design

Taking a look at [fluro's implementation details here](dart-package:/Users/conformity/.pub-cache/hosted/pub.dartlang.org/fluro-1.2.1/lib/src/router.dart), it's painfully clear to me that fluro's route handlers are doing too much. It'll probably be in my best interest to write a better, more axiomitic router that's also much better documented. This is a @todo for me