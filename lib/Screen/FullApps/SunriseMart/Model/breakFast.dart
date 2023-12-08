class breakFast {
  String? image, title, location, ratting, id, price;

  breakFast(
      {this.image,
      this.location,
      this.title,
      this.price,
      this.ratting,
      this.id});
}

List<breakFast> breakFastArray = [
  breakFast(
      id: "321",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCucumber2.png?alt=media&token=7657f5c4-cd28-4451-ad0c-7e71c9d5a067",
      location: "87 Botsford",
      title: "Banana Grocery",
      price: "\$20.00",
      ratting: "4.3"),
  breakFast(
      id: "2342",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FMint.png?alt=media&token=95cd892c-c332-4ad7-b568-639cc59f8208",
      location: "Gilison London",
      price: "\$24.00",
      title: "Fish Grocery",
      ratting: "4.1"),
  breakFast(
      id: "3231",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2Fradish.png?alt=media&token=ddb390b6-7886-4c90-a9a2-bd29c37efdb9",
      location: "Netherland",
      price: "\$25.00",
      title: "Beff Grocery",
      ratting: "4.2"),
  breakFast(
      id: "4321",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FTomato1.png?alt=media&token=b324bf87-bc59-4cad-b94c-652ebad18ec2",
      location: "Nepal",
      price: "\$30.00",
      title: "Butter Grocery",
      ratting: "4.4"),
  breakFast(
      id: "554",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBawal.png?alt=media&token=4c98e743-c464-42e5-a702-9b029bbe0da7",
      location: "Nepal",
      price: "\$35.00",
      title: "Carrot Grocery",
      ratting: "4.6"),
];
