class restaurantData {
  String? image, title, location, ratting, id, price, distance;

  restaurantData(
      {this.image,
      this.location,
      this.title,
      this.price,
      this.ratting,
      this.id,
      this.distance});
}

List<restaurantData> restaurantDataArray = [
  restaurantData(
      id: "fdswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBanana.png?alt=media&token=19d27cd0-2b24-47b2-a81b-22c476a73aa0",
      location: "87 Botsford",
      title: "The Cheeses Guide",
      price: "\$20.00",
      ratting: "4.3",
      distance: "42 km"),
  restaurantData(
      id: "vcxsad",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FPapaya.png?alt=media&token=33a0c591-571d-40f4-ba90-84e7bb8ba57f",
      location: "Gilison London",
      price: "\$24.00",
      title: "Garage Bar Seafood",
      ratting: "4.1",
      distance: "63 km"),
  restaurantData(
      id: "xzvz",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMint.png?alt=media&token=95cd892c-c332-4ad7-b568-639cc59f8208",
      location: "Netherland",
      price: "\$25.00",
      title: "Spagheti Kilimanjaro",
      ratting: "4.2",
      distance: "19 km"),
  restaurantData(
      id: "deqsa",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2Ffresho.png?alt=media&token=c30814fb-cf81-46f0-84de-d2b239cf480e",
      location: "Nepal",
      price: "\$30.00",
      title: "Gangtok Vegetable",
      ratting: "4.4",
      distance: "97 km"),
  restaurantData(
      id: "gfdewr",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FSarden.png?alt=media&token=eb4b8270-a49d-42a1-9413-051bc6c59876",
      location: "Nepal",
      price: "\$35.00",
      title: "Soup Caikaki",
      ratting: "4.6",
      distance: "23 km"),
];
