part of data;

@immutable
class TagModel {
  final String displayName;

  const TagModel({
    this.displayName: 'Missing'
  });

  static const TagModel initial = const TagModel();
}