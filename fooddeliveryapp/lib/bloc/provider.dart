import 'package:fooddeliveryapp/model/foodItem.dart';

class CartProvider {
  List<FoodItem> foodItems = [];

  List<FoodItem> add(FoodItem foodItem) {
    foodItems.add(foodItem);
    return foodItems;
  }

  List <FoodItem> remove(FoodItem foodItem) {
    foodItems.remove(foodItem);
    return foodItems;
  }
}