import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:glinch/src/commons/constants/filter_types.dart';
import 'package:glinch/src/extensions/http.dart';
import 'package:glinch/src/features/details/domain/model/cocktail_details.dart';
import 'package:glinch/src/features/home/data/data_source/cocktail_remote_data_source.dart';
import 'package:glinch/src/features/home/domain/model/cocktail.dart';
import 'package:glinch/src/features/home/domain/model/filters.dart';
import 'package:glinch/src/features/home/domain/repository/coctail_repository.dart';

class CocktailRepositoryImpl implements CocktailRepository {
  final _source = CocktailRemoteDataSource(Dio());

  @override
  Future<ApiResource<List<Cocktail>>> getCocktails() async{
    try {
      await Future.delayed(const Duration(seconds: 2), (){
      });
      final Response response = await _source.getAlcoholicDrinks();
      log('${response.data}');

      if (response.isSuccessful) {
        final List<dynamic> decodedJson = response.data['drinks'];

        final data = decodedJson.map((json) => Cocktail.fromJson(json)).toList();
        return ApiResource.success(data);
      } else {
        return ApiResource.error('Error from server');
      }
    } catch (e) {
      return ApiResource.error('Error $e');
    }
  }

  @override
  Future<ApiResource<CocktailDetails>> getCocktailDetails(String id) async{
    try {
      await Future.delayed(const Duration(seconds: 2), (){

      });
      final Response response = await _source.getDrinkDetails(id);
      if (response.isSuccessful) {
        final Map<String, dynamic> decodedJson = response.data['drinks'][0];

        final data = CocktailDetails.fromJson(decodedJson);
        return ApiResource.success(data);
      } else {
        return ApiResource.error('Error from server');
      }
    } catch (e) {
      return ApiResource.error('Error $e');
    }
  }

  @override
  Future<ApiResource<List<Filters>>> getFilters(FilterTypes filterType) async{
    try {
      await Future.delayed(const Duration(seconds: 2), (){

      });
      final Response response = await _source.getFilters(filterType);
      if (response.isSuccessful) {
        final List<dynamic> decodedJson = response.data['drinks'];
        final data = decodedJson.map((json) => Filters.fromJson(json)).toList();
        return ApiResource.success(data);
      } else {
        return ApiResource.error('Error from server');
      }
    } catch (e) {
      return ApiResource.error('Error $e');
    }
  }

  @override
  Future<ApiResource<List<Cocktail>>> filterDrinks(FilterTypes filterType, String name) async{
    try {
      await Future.delayed(const Duration(seconds: 2), (){

      });
      final Response response = await _source.getFilteredDrinks(filterType, name);
      if (response.isSuccessful) {
        final List<dynamic> decodedJson = response.data['drinks'];

        final data = decodedJson.map((json) => Cocktail.fromJson(json)).toList();
        return ApiResource.success(data);
      } else {
        return ApiResource.error('Error from server');
      }
    } catch (e) {
      return ApiResource.error('Error $e');
    }
  }

  @override
  Future<ApiResource<List<Cocktail>>> searchDrinks(String name) async{
    try {
      await Future.delayed(const Duration(seconds: 2), (){

      });
      final Response response = await _source.getSearchedDrinks(name);
      log('${response.data}');

      if (response.isSuccessful) {
        final List<dynamic> decodedJson = response.data['drinks'];

        final data = decodedJson.map((json) => Cocktail.fromJson(json)).toList();
        return ApiResource.success(data);
      } else {
        return ApiResource.error('Error from server');
      }
    } catch (e) {
      return ApiResource.error('Error $e');
    }
  }

}

