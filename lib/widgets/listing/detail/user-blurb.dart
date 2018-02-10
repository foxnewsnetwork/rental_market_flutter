part of widgets;

class UserBlurb extends StatelessWidget {
  const UserBlurb({
    Key key,
    @required this.user,
    @required this.onPressed
  }) : super(key: key);

  final UserModel user;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 68.0,
      decoration: new BoxDecoration(
        border: BorderStyles.sandwich
      ),
      child: new FlatButton(
        color: Colors.white,
        onPressed: onPressed,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLeftContent(),
            _buildRightIcon()
          ]
        )
      ),
    );
  }

  Widget _buildLeftContent() {
    return new Row(
      children: <Widget>[
        _buildAvatar(),
        _buildUserInfo()
      ],
    );
  }

  Widget _buildAvatar() {
    return new Container(
      margin: const EdgeInsets.only(right: 12.0),
      child: new CircleAvatar(
        backgroundImage: user.imageProvider,
        radius: 12.0,
      )
    );
  }

  Widget _buildUserInfo() {
    return new Column(
      children: <Widget>[
        new Text(
          user.fullName,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16.0
          ),
        ),
        new Text(
          '${user.listingCount} listings',
          style: const TextStyle(
            fontSize: 14.0
          ),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

  Widget _buildRightIcon() {
    return new Icon(
      Icons.chevron_right,
      size: 14.0
    );
  }
}
