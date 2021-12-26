class Category {
  String id;
  String name;
  String imageUrl;
  int productSize;
  List<Slider> slider;
  Category(this.id, this.name, this.imageUrl, this.productSize, this.slider);
}

class Slider {
  String id;
  String title;
  String image;
  Slider(this.id, this.title, this.image);
}

class Product {
  String id;
  String name;
  String brand;
  double listPrice;
  double mrp;
  // List sizes;
  // List colors;
  bool isInCart;
  String imageLink;
  List<String> sizes;
  List<String> colors;
  // List<ProductImage> images;
  bool inStock;
  bool isActive;
  int qty;
  int productSize;
  // String endcursor;
  // bool hasNext
  Product(
      this.id,
      this.brand,
      this.name,
      this.listPrice,
      this.imageLink,
      this.productSize,
      this.isInCart,
      this.mrp,
      this.sizes,
      this.colors,
      this.inStock,
      this.isActive,
      this.qty);
}

class ProductImage {
  String id;
  String largeImage;
  String normalImage;
  String thumImage;
  ProductImage(this.id, this.largeImage, this.normalImage, this.thumImage);
}
