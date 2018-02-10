part of widgets;

class AddressMapButton extends StatelessWidget {
  final String address;
  final VoidCallback onPressed;

  AddressMapButton({
    Key key,
    this.address,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new _MapContainer(address: address),
        new _AddressButton(
          address: address, 
          onPressed: onPressed
        )
      ],
    );
  }
}

class _AddressButton extends StatelessWidget {
  final String address;
  final VoidCallback onPressed;

  _AddressButton({
    Key key,
    this.address,
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
      child: _buildButton()
    );
  }

  Widget _buildButton() {
    return new RaisedButton(
      onPressed: onPressed,
      color: Colors.white,
      child: new Text(address)
    );
  }
}

class _MapContainer extends StatelessWidget {
  final String address;

  _MapContainer({
    Key key,
    this.address
  }) : super(key: key);

  String get imageURI => staticMapURI(
    address: address,
    width: 333,
    height: 210,
    zoom: 16
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        border: new Border(
          top: new BorderSide(
            color: Colors.black
          )
        ),
      ),
      child: _buildImage(),
    );
  }

  Widget _buildImage() {
    return new Image.network(
      imageURI,
      height: 125.0, 
      fit: BoxFit.cover,
    );
  }
}