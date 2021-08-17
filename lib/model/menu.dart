import 'food.dart';
import 'drink.dart';

class Menu {
  late List<Food> foods;
  late List<Drink> drinks;

  Menu({required this.foods, required this.drinks});

  Menu.fromJson(Map<String, dynamic> menu) {
    if (menu['foods'] != null) {
      foods = <Food>[];
      menu['foods'].forEach((v) {
        foods.add(new Food.fromJson(v));
      });
    }

    if (menu['drinks'] != null) {
      drinks = <Drink>[];
      menu['drinks'].forEach((v) {
        drinks.add(new Drink.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['foods'] = this.foods.map((v) => v.toJson()).toList();
    data['drinks'] = this.drinks.map((v) => v.toJson()).toList();
    return data;
  }
}