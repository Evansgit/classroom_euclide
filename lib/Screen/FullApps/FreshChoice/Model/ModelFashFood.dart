class FashFood {
  final String? name;
  final double? price;
  final double? weight;
  final double? calory;
  final double? protein;
  final String? id;
  final String? item;
  final String? imgPath;

  FashFood(
      {this.name,
      this.price,
      this.weight,
      this.calory,
      this.protein,
      this.item,
      this.id,
      this.imgPath});

  static List<FashFood> list = [
    FashFood(
      id: "1",
      name: "Cabage Guide",
      price: 20,
      weight: 130,
      calory: 460,
      protein: 30,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FCabage2.png?alt=media&token=57970774-e975-4105-9151-892efae86357",
    ),
    FashFood(
      id: "2",
      name: "Carrot Grocery",
      price: 24,
      weight: 120,
      calory: 300,
      protein: 45,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FCarrot.png?alt=media&token=7602f22a-38fe-4152-863b-d2a694fdadc4",
    ),
    FashFood(
      id: "3",
      name: "Egg Grocery",
      price: 25,
      weight: 100,
      calory: 320,
      protein: 150,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FEgg3.png?alt=media&token=a58b0e0d-dc6d-469e-af09-4ec49a8082e1",
    ),
    FashFood(
      id: "4",
      name: "Mint Grocery",
      price: 30,
      weight: 30,
      calory: 65,
      protein: 50,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FMint.png?alt=media&token=dcee67d3-d0bc-4709-88dc-d179b26a4c37",
    ),
    FashFood(
      id: "5",
      name: "Papaya Grocery",
      price: 20,
      weight: 30,
      calory: 120,
      protein: 310,
      item:
          "#Chicken #Juicy BBQ #Vegetables #Potato Wedges #Coleslaw Salad #Healthy Yolk #Spicy Fries #Mushroom",
      imgPath:
          "https://firebasestorage.googleapis.com/v0/b/healtheat-fbf95.appspot.com/o/bigui%2Fvegetable%2FPapaya.png?alt=media&token=96ed02c9-761a-42d2-aa97-e6b94ba87e39",
    ),
  ];
}
