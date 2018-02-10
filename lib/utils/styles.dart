part of utils;

/// BorderStyles represent commonly used presets for
/// borders in buttons and the like throughout the app
abstract class BorderStyles {
  static const divider = const BorderSide(color: Colors.black38);
  static const sandwich = const Border(
    top: divider,
    bottom: divider
  );
}
