class dinner {
  String? image, title, location, ratting, id, price;

  dinner(
      {this.image,
      this.location,
      this.title,
      this.price,
      this.ratting,
      this.id});
}

List<dinner> dinnerArray = [
  dinner(
      id: "fdswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBawal.png?alt=media&token=4c98e743-c464-42e5-a702-9b029bbe0da7",
      location: "87 Botsford",
      title: "Fish Grocery",
      price: "\$20.00",
      ratting: "4.3"),
  dinner(
      id: "vcxsad",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FBeef.png?alt=media&token=002a3e99-0465-498e-8f2c-33199fbcc371",
      location: "Gilison London",
      price: "\$24.00",
      title: "Beef Grocery",
      ratting: "4.1"),
  dinner(
      id: "xzvz",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FButterMurukku.png?alt=media&token=e9b7e453-c154-4059-acf1-95bb862ae854",
      location: "Netherland",
      price: "\$25.00",
      title: "Butter Grocery",
      ratting: "4.2"),
  dinner(
      id: "deqsa",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCabage2.png?alt=media&token=bf228f90-a7ec-4d05-8176-27a95e65e03c",
      location: "Nepal",
      price: "\$30.00",
      title: "Cabage Grocery",
      ratting: "4.4"),
  dinner(
      id: "gfdewr",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FCarrot.png?alt=media&token=1ccd9ef0-7a08-4571-bfb0-e0dcfe2ec07c",
      location: "Nepal",
      price: "\$35.00",
      title: "Carrot Grocery",
      ratting: "4.6"),
  dinner(
      id: "gfdedsawr",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/Vegetable%2FChickenLeg.png?alt=media&token=70fa51ba-3a31-4e85-9b12-9d348cc22f7f",
      location: "Nepal",
      price: "\$35.00",
      title: "Chicken Grocery",
      ratting: "4.6"),
];
