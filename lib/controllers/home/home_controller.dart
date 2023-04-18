import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/pages/home/home.dart';
import 'package:urban_style/widgets/chains.dart';

class home_controller {

  static var all_item = [];



  static load_item_for_search(context) async {
    QueryBuilder<ParseObject> queryTodo =
    QueryBuilder<ParseObject>(ParseObject('products'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      var data = apiResponse.results;
      all_item = data!;
      print(all_item);
      print("Loaded All Data");
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
}
