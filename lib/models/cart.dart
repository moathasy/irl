class Cart {
  final int? id;
  final String? productId;
  final String? productName;
  final String? price;
  int? quantity;

  final String? image;

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.image,
  });

  factory Cart.fromJson(Map<dynamic, dynamic> json) => Cart(
        id: json['id'],
        productId: json['productId'],
        productName: json['productName'],
        price: json['productPrice'],
        quantity: json['quantity'],
        image: json['image'],
      );

  Cart.empty()
      : id = null,
        productId = null,
        productName = null,
        price = null,
        quantity = null,
        image = null;

  Map<String, dynamic> toMap() => {
        'id': id,
        'productId': productId,
        'productName': productName,
        'productPrice': price,
        'quantity': quantity,
        'image': image,
      };

  @override
  bool operator ==(covariant Cart other) =>
      other.id == id &&
      other.productId == productId &&
      other.productName == productName &&
      other.price == price &&
      other.quantity == quantity &&
      other.image == image;

  @override
  int get hashCode => Object.hash(
        id,
        productId,
        productName,
        price,
        quantity,
        image,
      );

  @override
  String toString() => {
        'id': id,
        'productId': productId,
        'productName': productName,
        'productPrice': price,
        'quantity': quantity,
        'image': image,
      }.toString();
}
