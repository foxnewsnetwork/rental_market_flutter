part of widgets;

const String _placeholderImageURI = 'assets/dogelog.jpg';

class GalleryPreview extends StatefulWidget {
  final List<String> imageURIs;
  final VoidCallback seeAllPressed;

  const GalleryPreview({
    Key key,
    this.imageURIs,
    this.seeAllPressed
  }) : super(key: key);

  @override
  _GalleryPreviewState createState() => new _GalleryPreviewState();
}

class _GalleryPreviewState extends State<GalleryPreview> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new _TriplePreview(
          imageURIs: widget.imageURIs,
        ),
        new _SeeAllButton(
          onPressed: widget.seeAllPressed,
        )
      ],
    );
  }
}

class _TriplePreview extends StatelessWidget {
  final List<String> imageURIs;

  _TriplePreview({
    Key key,
    this.imageURIs
  }) : super(key: key);

  String get firstImageURI => imageURIs[0] ?? _placeholderImageURI;
  String get secondImageURI => imageURIs[1] ?? _placeholderImageURI;
  String get thirdImageURI => imageURIs[2] ?? _placeholderImageURI;
  String get chopImageURI => imageURIs[3] ?? _placeholderImageURI; 

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 125.0,
      child: _listView(),
    );
  }

  Widget _listView() {
    return new ListView.builder(
      itemCount: imageURIs.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return new _ImageThumbTile(
          imageURI: imageURIs[index]
        );
      },
    );
  }
}

class _ImageThumbTile extends StatelessWidget {
  final String imageURI;

  _ImageThumbTile({
    Key key,
    this.imageURI = _placeholderImageURI
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
          boxShadow: const <BoxShadow>[
            const BoxShadow(
              color: Colors.black45,
              spreadRadius: 1.0,
              blurRadius: 1.0
            )
          ]
        ),
        child: new Image.asset(
          imageURI
        ),
      )
    );
  }
}

class _SeeAllButton extends StatelessWidget {
  final VoidCallback onPressed;

  _SeeAllButton({
    Key key,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        border: new Border.all(
          color: Colors.black45
        )
      ),
      child: new RaisedButton(
        onPressed: onPressed,
        color: Colors.white,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('See All'),
            const Icon(Icons.arrow_right)
          ],
        ),
      )
    );
  }
}