import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { glutenFree, lactoseFree, vegetarian, vegan }

class FilterMealsNotifier extends StateNotifier<Map<Filter, bool>>{
  FilterMealsNotifier():super({
    Filter.glutenFree: false,
    Filter.lactoseFree: false,
    Filter.vegetarian: false,
    Filter.vegan: false,
  });

  void setFilter(Filter filter, bool isActive){
    state = {
      ...state,
      filter: isActive
    };
  }
}

final filtersProvider = StateNotifierProvider<FilterMealsNotifier, Map<Filter, bool>>((ref) => FilterMealsNotifier());