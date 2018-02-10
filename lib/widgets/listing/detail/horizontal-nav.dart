part of widgets;

class _ExpandedFlatButton extends StatefulWidget {
  _ExpandedFlatButton({
    Key key, 
    this.onPressed, 
    this.txt
  }) : super(key: key);

  final VoidCallback onPressed;
  final String txt;

  @override
  _ExpandedFlatButtonState createState() => new _ExpandedFlatButtonState();
}

class _ExpandedFlatButtonState extends State<_ExpandedFlatButton> {
  static final BoxDecoration innerBoxDecor = const BoxDecoration(
    border: const Border(
      left: const BorderSide(
        width: 1.0,
        color: Colors.black54
      ),
      right: const BorderSide(
        width: 1.0,
        color: Colors.black54
      )
    )
  );
  static final EdgeInsets innerBoxPadding = const EdgeInsets.symmetric(vertical:  6.0);

  static List<Widget> _iconButtonContent(IconData icon, String txt) {
    return <Widget>[
      new Text(
        toString(icon),
        style: const TextStyle(
          fontFamily: 'FontAwesome'
        ),
      ),
      new Text(txt)
    ];
  }

  Expanded _buildInnerExpanded(Widget child) {
    return new Expanded(
      child: new Container(
        decoration: innerBoxDecor,
        child: child
      )
    );
  }
  Widget build(BuildContext context) {
    return _buildInnerExpanded(
      new FlatButton(
        onPressed: widget.onPressed,
        child: new Container(
          padding: innerBoxPadding,
          child: new Column(
            children: _iconButtonContent(FontAwesomeIcons.circleO, widget.txt)
          ),
        )
      )
    );
  }
}

class _ExpandedFlatButtonEdge extends _ExpandedFlatButton {
  _ExpandedFlatButtonEdge({
    Key key,
    VoidCallback onPressed,
    String txt
  }) : super(key: key, onPressed: onPressed, txt: txt);

  @override
  _ExpandedFlatButtonEdgeState createState() => new _ExpandedFlatButtonEdgeState();
}

class _ExpandedFlatButtonEdgeState extends _ExpandedFlatButtonState {
  @override
  Expanded _buildInnerExpanded(Widget child) {
    return new Expanded(
      child: child
    );
  } 
}

class HorizontalNav extends StatefulWidget {
  final VoidCallback sharePressed;
  final VoidCallback bookmarkPressed;
  final VoidCallback rentPressed;

  const HorizontalNav({
    Key key,
    this.sharePressed,
    this.bookmarkPressed,
    this.rentPressed
  }) : super(key: key);

  @override
  _HorizontalNavState createState() => new _HorizontalNavState();
}

class _HorizontalNavState extends State<HorizontalNav> {
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new _ExpandedFlatButtonEdge(
          onPressed: widget.sharePressed,
          txt: 'Share'
        ),
        new _ExpandedFlatButton(
          onPressed: widget.bookmarkPressed,
          txt: 'Bookmark',
        ),
        new _ExpandedFlatButtonEdge(
          onPressed: widget.rentPressed,
          txt: 'Rent'
        )
      ],
    );
  }
}