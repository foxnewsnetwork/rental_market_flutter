part of widgets;

class HamburgerMenuSection extends StatelessWidget {
  final List<Widget> children;
  final Color bgColor;
  final Color borderColor;

  HamburgerMenuSection({
    Key key,
    this.children: const <Widget>[],
    this.bgColor: Colors.white,
    this.borderColor: Colors.black38
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: bgColor,
        border: new Border(
          top: new BorderSide(
            color: borderColor
          ),
          bottom: new BorderSide(
            color: borderColor
          ),
        )
      ),
      child: new Column(
        children: children,
      )
    );
  }
}