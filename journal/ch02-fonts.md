# Using Different Fonts
As a part of the [icon and font story](https://trello.com/c/8S4DSMle/48-flutter-load-a-font-asset), I need to figure out how to manipulate different fonts in the world of flutter

## FontAwesome
An existing flutter library is the fontawesome for [flutter pub library here](https://pub.dartlang.org/packages/font_awesome_flutter), adding a couple of lines to the `pubspec.yaml` file:

```yaml
fonts:
  - family: FontAwesome # Do not change!
    fonts:
      - asset: packages/font_awesome_flutter/fonts/fontawesome.woff
```

like so allows me to use font-awesome allows me to use the font-awesome icons like so:

```dart
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

new IconButton(
  icon: new Icon(FontAwesomeIcons.android),
  tooltip: 'Font awesome Icon Yay',
  onPressed: () { print('Pressed icon'); },
),
```

## MaterialIcons
Using material icons is even simplier, by simply toggling a boolean in the `pubspec.yaml` file like so:

```yaml
flutter:
  uses-material-design: true
```

We enable the flutter compiler to pull in the desired asset files. We can then use the icons in much the same way as the font awesome fonts:

```dart
import 'package:flutter/material.dart';
new IconButton(
  icon: new Icon(Icons.access_time),
  tooltip: 'Font awesome Icon Yay',
  onPressed: () { print('Pressed icon'); },
),
```

## toString
Sometimes, we want to embed different fonts within other strings, we can do this with the `String.fromCharCode` factory constructor like so:

```dart
String toString(IconData icon) {
  return new String.fromCharCode(icon.hashCode);
}

new Text(
  'this is a string ${toString(Icons.access_time)}`
);
```

Using these tools we're able to render icons on the debug page:

![icons and fonts on the debug page](./assets/ch02/icons-and-fonts-debug.png)