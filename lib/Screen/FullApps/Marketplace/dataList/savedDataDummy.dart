class SavedDataDummy{
  String? title;
  int? rating;
  int? countRating;
  String? price;
  String? image;
  int? id;

  SavedDataDummy({
    this.title,
    this.rating,
    this.price,
    this.countRating,
    this.image,
    this.id
  });
}

List<SavedDataDummy> ElectronicData = [
  SavedDataDummy(
      id: 1,
      image: "https://image.coolblue.nl/422x390/products/1033437",
      title: "Iphone X gen 4gb 320gb black phone",
      price: "\$10",
      rating: 4,
      countRating: 11
  ),
  SavedDataDummy(
      id: 2,
      image: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/image/AppleInc/aos/published/images/m/bp/mbp15touch/space/mbp15touch-space-select-201807?wid=892&hei=820&&.v=1529520056969",
      title: "Macbook Pro 2018 256 SSD ram 8 gb",
      price: "\$20",
      rating: 4,
      countRating: 121  ),
  SavedDataDummy(
      id: 3,
      image: "https://images-na.ssl-images-amazon.com/images/I/51I1KJ6BqmL._SX569_.jpg",
      title: "Smart watch + bracelet exclusive",
      price: "\$10",
      rating: 4,
      countRating: 12
  ),

];