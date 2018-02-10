part of data;

@immutable
class UserModel {
  final String avatarImageURL;
  final String fullName;
  final String initials;
  final String email;
  final num listingCount;

  const UserModel({
    this.avatarImageURL: 'images/dogelog.jpg',
    this.fullName: 'Doge Peterson',
    this.email: 'my-email@somewhere.co',
    this.initials: 'AU',
    this.listingCount: 0
  });

  ImageProvider<dynamic> get imageProvider => new AssetImage(avatarImageURL);

  static const initial = const UserModel();
}