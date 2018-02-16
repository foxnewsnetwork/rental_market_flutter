part of widgets;

class ProductAisle extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final List<ProductOverviewModel> products;

  const ProductAisle({
    Key key,
    this.name,
    this.onTap,
    this.products
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Text(
              name,
              style: const TextStyle(
                fontSize: 18.0
              ),
            ),
            new FlatButton(
              child: new Text(
                'See All',
                style: const TextStyle(
                  fontSize: 14.0
                ),
              ),
              onPressed: onTap,
            )
          ],
        ),
        new SizedBox(
          height: 130.0,
          child: new ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: _buildProductCard,
          ),
        )
      ],
    );
  }

  Widget _buildProductCard(BuildContext context, int index) {
    final ProductOverviewModel product = products.elementAt(index);
    return new ProductOverviewCard(
      title: product.name,
      image: product.previewImage,
      stars: product.stars,
      displayPrice: product.displayPrice
    );
  }
}

class ProductOverviewCard extends StatelessWidget {
  final String title;
  final String image;
  final double stars;
  final String displayPrice;

  const ProductOverviewCard({
    Key key,
    this.title,
    this.image,
    this.stars,
    this.displayPrice
  }): super(key: key);

  Widget _buildClippedCardTitle() {
    return new Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.clip,
      style: const TextStyle(
        fontSize: 13.0
      ),
    );
  }

  Widget _buildClippedCardSubcontent() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Text(
              stars.toStringAsPrecision(2),
              style: const TextStyle(
                fontSize: 9.0
              ),
            ),
            const Icon(
              Icons.star,
              size: 9.0
            )
          ],
        ),
        new Text(
          displayPrice,
          style: const TextStyle(
            fontSize: 9.0,
            color: Colors.green
          ),
        )
      ],
    );
  }
  
  Widget _buildCardHeroImage() {
    return new SizedBox(
      height: 70.0,
      child: new Stack(
        children: <Widget>[
          new Positioned.fill(
            child: new Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          )
        ],
      )
    );
  }

  Widget _buildCardTextContent() {
    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 5.0
      ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildClippedCardTitle(),
          _buildClippedCardSubcontent()
        ],
      )
    );
  }

  Widget _buildCardContent() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _buildCardHeroImage(),
        _buildCardTextContent()
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      height: 130.0,
      width: 112.0,
      child: new Card(
        child: _buildCardContent(),
      )
    );
  }
}