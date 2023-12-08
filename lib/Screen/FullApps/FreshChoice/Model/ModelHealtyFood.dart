class HealtyFood {
  final String? name;
  final double? price;
  final double? weight;
  final double? calory;
  final double? protein;
  final String? item;
  final String? id;
  final String? imgPath;

  HealtyFood(
      {this.name,
      this.price,
      this.weight,
      this.id,
      this.calory,
      this.protein,
      this.item,
      this.imgPath});

  static List<HealtyFood> list = [
    HealtyFood(
      id: "1",
      name: "Tomato Grocery",
      price: 20,
      weight: 130,
      calory: 460,
      protein: 30,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FTomato1.png?alt=media&token=d13cc9b7-034d-4967-8486-30bdf05f8437",
    ),
    HealtyFood(
      id: "2",
      name: "Cabage Grocery",
      price: 24,
      weight: 120,
      calory: 300,
      protein: 45,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FCabage2.png?alt=media&token=57970774-e975-4105-9151-892efae86357",
    ),
    HealtyFood(
      id: "3",
      name: "Avocado Grocery",
      price: 25,
      weight: 100,
      calory: 320,
      protein: 150,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FAvocado.png?alt=media&token=88ea8756-1bbc-457e-b6ec-758cb3592bb1",
    ),
    HealtyFood(
      id: "4",
      name: "Banana",
      price: 30,
      weight: 30,
      calory: 65,
      protein: 50,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FBanana.png?alt=media&token=cf2d91d6-8837-44a6-8299-4c8205cf86a0",
    ),
    HealtyFood(
      id: "5",
      name: "Egg Grocery",
      price: 20,
      weight: 30,
      calory: 120,
      protein: 310,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FEgg3.png?alt=media&token=a58b0e0d-dc6d-469e-af09-4ec49a8082e1",
    ),
  ];
}
