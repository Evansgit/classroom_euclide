class discover {
  String? image, title, location, ratting, id, price;

  discover(
      {this.image,
      this.location,
      this.price,
      this.title,
      this.ratting,
      this.id});
}

List<discover> discoverArray = [
  discover(
      id: "1",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMango.png?alt=media&token=14ce5f61-da52-4d64-ad16-1aaa28d9ff19",
      location: "87 Botsford",
      price: "\$20.00",
      title: "Banana Grocery",
      ratting: "4.3"),
  discover(
      id: "2",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FTomato1.png?alt=media&token=b324bf87-bc59-4cad-b94c-652ebad18ec2",
      location: "87 Botsford",
      price: "\$20.00",
      title: "Cabage Grocery",
      ratting: "4.3"),
  discover(
      id: "3",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FEgg3.png?alt=media&token=6df781df-0b1a-4fec-b5bd-3fd0d5d5557e",
      location: "Gilison London",
      price: "\$25.00",
      title: "Egg Grocery",
      ratting: "4.1"),
  discover(
      id: "4",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCorn1.png?alt=media&token=eaa26b06-a568-46da-b7b5-134541f1bfde",
      location: "Spagheti Kilimanjaro",
      price: "\$30.00",
      title: "Corn Grocery",
      ratting: "4.2"),
  discover(
      id: "5",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FApple.png?alt=media&token=03cb5fff-2630-47c6-934b-9579d9c24536",
      location: "Gangtok Vegetable",
      price: "\$35.00",
      title: "Apple Grocery",
      ratting: "4.7"),
  discover(
      id: "6",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FAvocado.png?alt=media&token=eb3310c9-8f1e-437c-8247-84665573d8e3",
      location: "Soup Caikaki",
      price: "\$40.00",
      title: "Avocado Grocery",
      ratting: "4.6"),
];
