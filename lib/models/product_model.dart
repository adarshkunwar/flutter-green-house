class ProductModel {
  String productName;
  String productImage;
  bool isFavorite;
  String category;
  double price;

  ProductModel(
      {required this.productName,
      required this.productImage,
      required this.isFavorite,
      required this.category,
      required this.price});
}
