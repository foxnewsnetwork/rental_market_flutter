part of data;

@immutable
class ProductOverviewModel {
  final String name;
  final double stars;
  final String displayPrice;
  final String previewImage;

  const ProductOverviewModel({
    this.name: 'Powerslide x2000 - version 7.8 - Sample',
    this.stars: 5.0,
    this.displayPrice: '\$4.99 / day',
    this.previewImage: 'images/dogelog.jpg'
  });

  static const initial = const ProductOverviewModel();
}