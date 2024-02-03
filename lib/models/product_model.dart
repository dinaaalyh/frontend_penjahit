class ProductModel {
  String image;
  String name;
  int price;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
  });
}

var products = [
  ProductModel(image: "product1.png", name: "Product 1", price: 500000),
  ProductModel(image: "product1.png", name: "Product 2", price: 600000),
  ProductModel(image: "product1.png", name: "Product 3", price: 700000),
];
