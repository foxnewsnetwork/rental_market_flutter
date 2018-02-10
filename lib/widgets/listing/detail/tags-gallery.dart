part of widgets;

class TagsGallery extends StatelessWidget {
  final List<Tag> tags;
  final VoidCallback onPressed;

  TagsGallery({
    Key key,
    this.tags,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      height: 75.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: tags.map((Tag tag) => 
          new _TagButton(
            tag: tag, 
            onPressed: onPressed
          )
        ).toList(),
      )
    );
  }
}

class _TagButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Tag tag;

  _TagButton({
    Key key,
    this.tag,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 7.5
      ),
      decoration: new BoxDecoration(
        border: new Border.all(
          color: Colors.black45
        )
      ),
      child: _buildButton(),
    );
  }

  Widget _buildButton() {
    return new FlatButton(
      onPressed: onPressed,
      color: Colors.white,
      child: new Text(tag.displayName),
    );
  }
}