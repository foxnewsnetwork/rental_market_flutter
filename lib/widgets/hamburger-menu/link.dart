part of widgets;

class HamburgerMenuLink extends StatelessWidget {
  final IconData icon;
  final String linkName;
  final HamburgerMenuNotification notification;
  final VoidCallback onPressed;

  HamburgerMenuLink({
    Key key,
    this.icon,
    this.linkName,
    this.notification,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: _buildIcon(),
      title: _buildText(),
      trailing: notification,
      onTap: onPressed,
    );
  }

  Widget _buildText() {
    return new Container(
      child: new Text(
        linkName,
        style: const TextStyle(
          color: Colors.blue
        )
      ),
    );
  }

  Widget _buildIcon() {
    return new Container(
      child: new Icon(
        icon,
        size: 24.0,
        color: Colors.blue,
      )
    );
  }
}