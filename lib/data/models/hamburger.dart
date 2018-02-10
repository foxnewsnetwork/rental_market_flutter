part of data;

@immutable
class HamburgerModel {
  final UserModel user;
  final int notifications;

  const HamburgerModel({
    this.user: UserModel.initial,
    this.notifications: 0
  });

  static const initial = const HamburgerModel();
}