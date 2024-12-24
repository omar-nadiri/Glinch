import 'package:dio/dio.dart';
import 'package:glinch/src/commons/constants/filter_types.dart';

class CocktailRemoteDataSource {
  final Dio _dioClient;

  CocktailRemoteDataSource(this._dioClient);

  Future<Response> getAlcoholicDrinks() => _dioClient.get(
        'https://www.thecocktaildb.com/api/json/v1/1/filter.php',
        queryParameters: {'a': 'Alcoholic'},
      );

  Future<Response> getDrinkDetails(String id) => _dioClient.get(
        'https://www.thecocktaildb.com/api/json/v1/1/lookup.php',
        queryParameters: {'i': id},
      );

  Future<Response> getFilters(FilterTypes filterType) => _dioClient.get(
        'https://www.thecocktaildb.com/api/json/v1/1/list.php',
        queryParameters: {filterType.value: 'list'},
  );

  Future<Response> getFilteredDrinks(FilterTypes filterType, String name) => _dioClient.get(
        'https://www.thecocktaildb.com/api/json/v1/1/filter.php',
        queryParameters: {filterType.value: name},
      );

  Future<Response> getSearchedDrinks(String name) => _dioClient.get(
        'https://www.thecocktaildb.com/api/json/v1/1/search.php',
        queryParameters: {'s': name},
      );
}
