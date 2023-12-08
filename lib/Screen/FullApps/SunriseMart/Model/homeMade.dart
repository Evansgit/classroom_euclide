class homeMadeData {
  String? image, title, location, ratting, id, price, distance;

  homeMadeData(
      {this.image,
      this.location,
      this.title,
      this.price,
      this.ratting,
      this.id,
      this.distance});
}

List<homeMadeData> homeMadeDataArray = [
  homeMadeData(
      id: "fdswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FAvocado.png?alt=media&token=eb3310c9-8f1e-437c-8247-84665573d8e3",
      location: "87 Botsford",
      title: "Avocado Grocery",
      price: "\$20.00",
      ratting: "4.3",
      distance: "42 km"),
  homeMadeData(
      id: "vcxsad",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FGuava.png?alt=media&token=bcc43011-7b7b-4fe0-8014-68c960b5b81e",
      location: "Gilison London",
      price: "\$24.00",
      title: "Guava Grocery",
      ratting: "4.1",
      distance: "63 km"),
  homeMadeData(
      id: "xzvz",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMango.png?alt=media&token=14ce5f61-da52-4d64-ad16-1aaa28d9ff19",
      location: "Netherland",
      price: "\$25.00",
      title: "Mango Grocery",
      ratting: "4.2",
      distance: "19 km"),
  homeMadeData(
      id: "deqsa",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMint.png?alt=media&token=95cd892c-c332-4ad7-b568-639cc59f8208",
      location: "Nepal",
      price: "\$30.00",
      title: "Mint Grocery",
      ratting: "4.4",
      distance: "97 km"),
  homeMadeData(
      id: "gfdewr",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FPapaya.png?alt=media&token=33a0c591-571d-40f4-ba90-84e7bb8ba57f",
      location: "Nepal",
      price: "\$35.00",
      title: "Papaya Grocery",
      ratting: "4.6",
      distance: "23 km"),
];
