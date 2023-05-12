import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/pages/home/home.dart';
import 'package:urban_style/widgets/chains.dart';

import '../engine/engine_controller.dart';

class home_controller {

  static var all_item = [];



  static load_item_for_search(context) async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('products'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          all_item.add(data);

        }

      }
      // return Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => home()), (route) => false);
    } else {

      return [];
    }
  }


  static load_items(context) async {
    QueryBuilder<ParseObject> queryTodo =
        QueryBuilder<ParseObject>(ParseObject('products'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      var data = apiResponse.results;
      return data ;
    } else {

      return [];
    }
  }

  static load_caps(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Caps');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_mens(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Mens');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_women(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Women');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_kids(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Kids');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_daily(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Daily Products');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }





  static load_glasses(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Eyewear');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_rings(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Rings');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;
      }
    }
  }

  static load_chain(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Chains');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_shirts(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'T-Shirts');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_makeup(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Makeup');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_pants(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Pants');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_shoes(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Shoes');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data;

      }
    }
  }

  static load_sleepers(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Sleepers');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data ;

      }
    }
  }

  static load_electronics(context) async {
    final QueryBuilder<ParseObject> parseQuery =
        QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Electronics');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      for (var o in apiResponse.results!) {
        var data = apiResponse.results;
        return data ;
      }
    }
  }

  static load_frozen(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'FrozenFood');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_fruits_veges(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'FruitsVegetables');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }


  static load_breakfast(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'DairyBreakfast');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_munchies(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Munchies');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_drinks(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'DrinksJuices');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_bakery(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'DrinksJuices');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_masala_dryFruits(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Masala');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_sweet_tooth(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'SweetTooth');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_atta(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'AttaRice');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_pet_care(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Pet Care');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_personal_care(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Personal Care');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_cleaning_essentials(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'Cleaning Essentials');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var product = [];
      for(var data in apiResponse.results!){
        var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
        if(int.parse(mins) < 31){
          product.add(data);

        }

      }
      return product;
    }
  }

  static load_summer(context) async {
    final QueryBuilder<ParseObject> parseQuery =
    QueryBuilder<ParseObject>(ParseObject('products'));
    // `whereContains` is a basic query method that checks if string field
    // contains a specific substring
    parseQuery.whereContains('category', 'SweetTooth');

    // The query will resolve only after calling this method, retrieving
    // an array of `ParseObjects`, if success
    final ParseResponse apiResponse = await parseQuery.query();

    if (apiResponse.success && apiResponse.results != null) {
      var data = apiResponse.results;
      final QueryBuilder<ParseObject> parseQuery2 =
      QueryBuilder<ParseObject>(ParseObject('products'));
      // `whereContains` is a basic query method that checks if string field
      // contains a specific substring
      parseQuery2.whereContains('category', 'DrinksJuices');

      // The query will resolve only after calling this method, retrieving
      // an array of `ParseObjects`, if success
      final ParseResponse apiResponse2 = await parseQuery2.query();

      if (apiResponse2.success && apiResponse2.results != null) {
        // var data2 = apiResponse2.results;
        // return data2! + data!;
        var product = [];
        var product2 = [];
        for(var data in apiResponse.results!){
          var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
          if(int.parse(mins) < 31){
            product.add(data);

          }

        }
        for(var data in apiResponse2.results!){
          var mins = engine_controller().calculate_minute(double.parse(data["lat"]), double.parse(data["long"]));
          if(int.parse(mins) < 31){
            product2.add(data);

          }

        }

        return product + product2;
      }
    }
  }
}
