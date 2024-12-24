import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glinch/src/commons/constants/filter_types.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/home/data/repository/coctail_repository_impl.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';
import 'package:glinch/src/features/home/domain/repository/coctail_repository.dart';

final homeCocktails = FutureProvider.autoDispose((ref) async {
  final repo = CocktailRepositoryImpl();
  return await repo.getCocktails();
});

final getCocktailDetails = FutureProvider.autoDispose
    .family<ApiResource<CocktailDetails>, String>((ref, id) async {
  final repo = CocktailRepositoryImpl();
  return await repo.getCocktailDetails(id);
});

final getCategoriesFilters = FutureProvider.autoDispose((ref) async {
  final repo = CocktailRepositoryImpl();
  return await repo.getFilters(FilterTypes.categories);
});

final getIngredientsFilters = FutureProvider.autoDispose((ref) async {
  final repo = CocktailRepositoryImpl();
  return await repo.getFilters(FilterTypes.ingredients);
});

final selectedCategoriesFilter = StateProvider<String?>((ref) {
  return null;
});

final selectedIngredientFilter = StateProvider<String?>((ref) {
  return null;
});

class AsyncFilterNotifier extends AsyncNotifier<ApiResource<List<Cocktail>>> {
  Future<ApiResource<List<Cocktail>>> _fetchCocktail() async {
    final repo = CocktailRepositoryImpl();
    return await repo.filterDrinks(FilterTypes.alcoholic, 'Alcoholic');

  }

  @override
  FutureOr<ApiResource<List<Cocktail>>> build() {
    return _fetchCocktail();
  }


  Future<void> searchCocktail(String name) async {
    var didDispose = false;
    ref.onDispose(() => didDispose = true);
    await Future<void>.delayed(const Duration(milliseconds: 500));
    if (didDispose) {
      throw Exception('Cancelled');
    }
    state = const AsyncValue.loading();
    final repo = CocktailRepositoryImpl();
    state = AsyncValue.data(await repo.searchDrinks(name));
    ref.invalidateSelf();
    await future;
  }

  Future<void> fetchFilteredCocktail(
      FilterTypes filterType, String name) async {
    state = const AsyncValue.loading();
    final repo = CocktailRepositoryImpl();
    state = AsyncValue.data(await repo.filterDrinks(filterType, name));
    ref.invalidateSelf();
    await future;
  }
}

final asyncFilterProvider = AsyncNotifierProvider<AsyncFilterNotifier, ApiResource<List<Cocktail>>>(() {
  return AsyncFilterNotifier();
});

