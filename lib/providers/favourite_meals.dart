import 'package:fav_meals/models/meal.dart';
import 'package:fav_meals/providers/meals.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouriteMealsNotifier extends StateNotifier<List<Meal>>{
  FavouriteMealsNotifier() : super([]);

  bool toggleMealFavouriteStatus(Meal meal){
    final mealIsFavourite = state.contains(meal);

    if(mealIsFavourite){
      state = state.where((e) => e.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favouriteMeals = StateNotifierProvider<FavouriteMealsNotifier, List<Meal>>((ref) {
  return FavouriteMealsNotifier();
});

