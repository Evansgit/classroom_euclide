class ElectronicList {
  String? title;
  int? rating;
  int? countRating;
  String? price;
  String? image;
  int? id;

  ElectronicList(
      {this.title,
      this.rating,
      this.price,
      this.countRating,
      this.image,
      this.id});
}

List<ElectronicList> ElectronicData = [
  ElectronicList(
      id: 1,
      image: "https://i.ebayimg.com/images/g/vRsAAOSwk6lbnrR-/s-l300.jpg",
      title: "Dell E6230 core i7 3rd gen 4gb 320gb",
      price: "\$10",
      rating: 4,
      countRating: 12),
  ElectronicList(
      id: 2,
      image:
          "https://sc01.alicdn.com/kf/HTB1bLa3KVXXXXb2XXXXq6xXFXXXi/A2-A3-A4-Led-Copy-Board-Scale.jpg_350x350.jpg",
      title: "LED copy board pad with scale.",
      price: "\$20",
      rating: 4,
      countRating: 12),
  ElectronicList(
      id: 3,
      image:
          "https://images-na.ssl-images-amazon.com/images/I/51I1KJ6BqmL._SX569_.jpg",
      title: "Smart watch + bracelet exclusive",
      price: "\$10",
      rating: 4,
      countRating: 12),
  ElectronicList(
      id: 4,
      image:
          "https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      title: "Iphone 6S plus 64GB Black Edition",
      price: "\$20",
      rating: 4,
      countRating: 12),
];
