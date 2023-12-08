class lunch {
  String? image, title, location, ratting, id, price;

  lunch(
      {this.image,
      this.location,
      this.title,
      this.price,
      this.ratting,
      this.id});
}

List<lunch> lunchArray = [
  lunch(
      id: "5s21",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FDrumbstick1.png?alt=media&token=c67d8854-7d87-472b-9429-cc00b02b365a",
      location: "87 Botsford",
      title: "The Cheeses Guide",
      price: "\$20.00",
      ratting: "4.3"),
  lunch(
      id: "23242",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMint.png?alt=media&token=95cd892c-c332-4ad7-b568-639cc59f8208",
      location: "Gilison London",
      price: "\$24.00",
      title: "Garage Bar Seafood",
      ratting: "4.1"),
  lunch(
      id: "32g31",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMango.png?alt=media&token=14ce5f61-da52-4d64-ad16-1aaa28d9ff19",
      location: "Netherland",
      price: "\$25.00",
      title: "Spagheti Kilimanjaro",
      ratting: "4.2"),
  lunch(
      id: "4f321",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCabage2.png?alt=media&token=bf228f90-a7ec-4d05-8176-27a95e65e03c",
      location: "Nepal",
      price: "\$30.00",
      title: "Gangtok Vegetable",
      ratting: "4.4"),
  lunch(
      id: "55x4",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBanana.png?alt=media&token=19d27cd0-2b24-47b2-a81b-22c476a73aa0",
      location: "Nepal",
      price: "\$35.00",
      title: "Soup Caikaki",
      ratting: "4.6"),
];
