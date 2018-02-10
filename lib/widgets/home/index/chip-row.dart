part of widgets;

class HomeIndexChipRow extends StatelessWidget {
  final List<Widget> children;

  const HomeIndexChipRow({
    Key key,
    this.children: const <Widget>[]
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16.0
      ),
      height: 32.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: children,
      ),
    );
  }
}

class HomeIndexChip extends StatelessWidget {
  final Widget label;
  final VoidCallback onTap;

  const HomeIndexChip({
    Key key,
    @required this.label,
    this.onTap
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      child: new InkWell(
        onTap: onTap,
        child: new Chip(
          label: label,
          labelStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
          backgroundColor: Colors.blue,
        )
      )
    );
  }
}