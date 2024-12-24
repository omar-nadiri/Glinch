import 'package:glinch/src/commons/constants/filter_types.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';
import 'package:glinch/src/features/home/domain/model/filters.dart';

abstract interface class CocktailRepository {
  Future<ApiResource<List<Cocktail>>> getCocktails();
  Future<ApiResource<CocktailDetails>> getCocktailDetails(String id);
  Future<ApiResource<List<Filters>>> getFilters(FilterTypes filterType);
  Future<ApiResource<List<Cocktail>>> filterDrinks(FilterTypes filterType, String name);
  Future<ApiResource<List<Cocktail>>> searchDrinks(String name);
}


enum Status { loading, success, error }

class ApiResource<T> {
  final Status status;
  final T? data;
  final String? message;

  // Private constructor to enforce controlled creation
  const ApiResource._({required this.status, this.data, this.message});

  // Factory method for loading state
  factory ApiResource.loading() => const ApiResource._(status: Status.loading);

  // Factory method for success state
  factory ApiResource.success(T data) =>
      ApiResource._(status: Status.success, data: data);

  // Factory method for error state
  factory ApiResource.error(String message) =>
      ApiResource._(status: Status.error, message: message);

  // Debugging
  @override
  String toString() {
    return 'ApiResource(status: $status, data: $data, message: $message)';
  }
}