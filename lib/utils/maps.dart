part of utils;

/// this was formerly stored in my `~/.zshrc`, however, do to 
/// access issues on iOs and android, I had no choice to but
/// put it inside a `config/secrets.dart` file
const String _googleStaticMapAPIKey = Secrets.googleStaticMapsAPIKey;

/// MapTypes are documented here:
/// https://developers.google.com/maps/documentation/static-maps/intro#MapTypes
enum MapType {
  roadmap,
  satellite,
  hybrid,
  terrain
}

class _BadMapTypeError extends Error {
  final MapType mapType;

  _BadMapTypeError(this.mapType);

  @override
  String toString() => 'Unknown map type $mapType';
}

String _mapTypeStr(MapType maptype) {
  switch (maptype) {
    case MapType.roadmap:
      return 'roadmap';
    case MapType.hybrid:
      return 'hybrid';
    case MapType.satellite:
      return 'satellite';
    case MapType.terrain:
      return 'terrain';
  }
  throw new _BadMapTypeError(maptype);
}

/// Generates an URI that can be placed into an `Image` widget.
/// The documentation for the api is here: 
/// https://developers.google.com/maps/documentation/static-maps/intro
/// Currently, I'm not supporting everything; just stuff I need
String staticMapURI({
  String address,
  MapType maptype: MapType.roadmap,
  int width: 640,
  int height: 480,
  int zoom: 13
}) {
  assert(_googleStaticMapAPIKey is String, 
    'Expected the static map api to be a string, but instead got "$_googleStaticMapAPIKey"');
  final Uri uri = new Uri.https('maps.googleapis.com', 'maps/api/staticmap', {
    'center': address,
    'markers': address,
    'size': '${width}x$height',
    'maptype': _mapTypeStr(maptype),
    'key': _googleStaticMapAPIKey,
    'zoom': zoom.toString()
  });
  return uri.toString();
}