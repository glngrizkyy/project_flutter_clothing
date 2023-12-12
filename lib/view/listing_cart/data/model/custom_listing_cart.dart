// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class ModelsCustomListingCart {
  List<Products>? products;

  ModelsCustomListingCart({this.products});

  ModelsCustomListingCart.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  dynamic productId;
  dynamic quantity;
  String? title;
  dynamic price;
  dynamic description;
  dynamic category;
  dynamic image;

  Products(
      {this.productId,
      this.quantity,
      this.title,
      this.price,
      this.description,
      this.category,
      this.image});

  Products.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    quantity = json['quantity'];
    title = json['title'];
    price = json['price'].to;
    description = json['description'];
    category = json['category'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['quantity'] = this.quantity;
    data['title'] = this.title;
    data['price'] = this.price;
    data['description'] = this.description;
    data['category'] = this.category;
    data['image'] = this.image;
    return data;
  }
}
