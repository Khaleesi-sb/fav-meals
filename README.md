# Fav Meals

Fav Meals is a Flutter application that allows users to explore a variety of categorized food recipes, view the making process, difficulty level, and ingredients for each recipe, and mark their favorite recipes for quick access. The app also features smooth page transitions and explicit animations for an enhanced user experience. State management is implemented using Riverpod.

## Features

- **Explore Recipes**: Browse through different categories of food recipes.
- **Recipe Details**: View detailed instructions on the making process, difficulty level, and list of ingredients for each recipe.
- **Favorite Recipes**: Mark recipes as favorites and access them easily on the dedicated favorites page.
- **State Management**: Efficient state management using Riverpod.
- **Animations**: Enjoy smooth page transition animations and explicit animations.

## Screenshots

<!-- Add screenshots of your app here -->

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK

### Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/Khaleesi-sb/fav-meals.git
    cd fav_meals
    ```

2. **Install dependencies**:
    ```sh
    flutter pub get
    ```

3. **Run the app**:
    ```sh
    flutter run
    ```

## Riverpod

Riverpod is used for state management in the Fav Meals app. It provides a robust and scalable approach to managing state, ensuring smooth performance and maintainable code.

### Example of Riverpod Usage

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favoriteMealsProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void addMeal(Meal meal) {
    state = [...state, meal];
  }

  void removeMeal(Meal meal) {
    state = state.where((m) => m.id != meal.id).toList();
  }
}

```

### Usage

**Exploring Recipes**
- Open the app and navigate through different categories to explore recipes.
- Tap on a recipe to view detailed information, including the making process, difficulty level, and ingredients.

**Marking Favorites**
- On the recipe detail page, tap the favorite icon to mark a recipe as a favorite.
- Access all your favorite recipes from the favorites page.

**Contributing**
- Contributions are welcome! Please fork the repository and submit a pull request for any enhancements, bug fixes, or new features.

**Fork the Project**
- Create your Feature Branch (```git checkout -b feature/AmazingFeature```)
- Commit your Changes (```git commit -m 'Add some AmazingFeature'```)
- Push to the Branch (```git push origin feature/AmazingFeature```)
- Open a Pull Request