class Product {
  final String name;
  final double price;
  final String image;
  final int quantity;

  Product({
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 0,
  });
}
