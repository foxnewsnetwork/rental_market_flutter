part of data;

@immutable
class ProductAisleModel {
  final String name;
  final List<ProductOverviewModel> products;

  const ProductAisleModel({
    this.name: 'Recommended for you',
    this.products: const <ProductOverviewModel>[
      ProductOverviewModel.initial,
      ProductOverviewModel.initial,
      ProductOverviewModel.initial,
      ProductOverviewModel.initial,
      ProductOverviewModel.initial,
      ProductOverviewModel.initial,
      ProductOverviewModel.initial,
    ]
  });

  static const initial = const ProductAisleModel();
}