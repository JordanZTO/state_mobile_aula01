class Product {
  final String name;
  final double price;
  final String description;
  final String image;
  bool favorite;

  Product({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    this.favorite = false,
  });
}
