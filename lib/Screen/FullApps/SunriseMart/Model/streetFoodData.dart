class streetFoodData {
  String? image, title, location, ratting, id, price, distance;

  streetFoodData(
      {this.image,
      this.location,
      this.title,
      this.price,
      this.ratting,
      this.id,
      this.distance});
}

List<streetFoodData> streetFoodDataArray = [
  streetFoodData(
      id: "fdswe",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/nuts%2Fbigbasket.png?alt=media&token=ad8ff793-c471-49f6-925f-ae74d5b7737d",
      location: "87 Botsford",
      title: "The Cheeses Guide",
      price: "\$20.00",
      ratting: "4.3",
      distance: "42 km"),
  streetFoodData(
      id: "vcxsad",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/nuts%2Ffresho.png?alt=media&token=6fb513ba-b19a-4b85-b6a1-d2c76b06adbb",
      location: "Gilison London",
      price: "\$24.00",
      title: "Garage Bar Seafood",
      ratting: "4.1",
      distance: "63 km"),
  streetFoodData(
      id: "xzvz",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/nuts%2FproNature.png?alt=media&token=166c21dd-986a-45df-967c-fedc107b092e",
      location: "Netherland",
      price: "\$25.00",
      title: "Spagheti Kilimanjaro",
      ratting: "4.2",
      distance: "19 km"),
  streetFoodData(
      id: "deqsa",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/nuts%2FroyalAmerican.png?alt=media&token=01f112cc-7ddc-4a5a-99e6-c2dfaa521741",
      location: "Nepal",
      price: "\$30.00",
      title: "Gangtok Vegetable",
      ratting: "4.4",
      distance: "97 km"),
  streetFoodData(
      id: "gfdewr",
      image:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/nuts%2FroyalBrazilian.png?alt=media&token=11882ff3-eb94-41e6-9585-f516e01f8108",
      location: "Nepal",
      price: "\$35.00",
      title: "Soup Caikaki",
      ratting: "4.6",
      distance: "23 km"),
];
