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
  ProductModel(image: "1.jpeg", name: "Blouse", price: 100000),
  ProductModel(image: "2.jpeg", name: "Gamis", price: 300000),
  ProductModel(image: "3.jpeg", name: "Rok", price: 200000),
];
