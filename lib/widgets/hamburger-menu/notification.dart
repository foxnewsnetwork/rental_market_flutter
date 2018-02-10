part of widgets;

class HamburgerMenuNotification extends StatelessWidget {
  final NotificationSeverity severity;
  final String message;
  final Color backColor;
  final Color textColor;

  HamburgerMenuNotification.danger({
    Key key,
    this.message: ''
  }) 
  : backColor = Colors.red,
    textColor = Colors.white,
    severity = NotificationSeverity.danger,
    super(key: key);

  HamburgerMenuNotification.warning({
    Key key,
    this.message: ''
  }) 
  : backColor = Colors.yellow,
    textColor = Colors.white,
    severity = NotificationSeverity.warning,
    super(key: key);

  HamburgerMenuNotification.success({
    Key key,
    this.message: ''
  }) 
  : backColor = Colors.green,
    textColor = Colors.white,
    severity = NotificationSeverity.success,
    super(key: key);

  HamburgerMenuNotification.info({
    Key key,
    this.message: ''
  }) 
  : backColor = Colors.blue,
    textColor = Colors.white,
    severity = NotificationSeverity.info,
    super(key: key);

  HamburgerMenuNotification.invisible({
    Key key,
    this.message: ''
  }) 
  : backColor = Colors.transparent,
    textColor = Colors.transparent,
    severity = NotificationSeverity.invisible,
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 20.0,
      height: 20.0,
      margin: new EdgeInsets.only(right: 7.0),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(10.0),
        color: backColor
      ),
      child: new Center(
        child: _buildText(),
      )
    );
  }

  Widget _buildText() {
    return new Text(
      message,
      style: new TextStyle(
        fontSize: 12.0,
        color: textColor
      ),
    );
  }
}