import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:urban_style/pages/home/home.dart';
import 'package:urban_style/widgets/chains.dart';

class home_controller {
  static var products = [];

  static var caps = [];
  static var chains = [];
  static var glasses = [];
  static var rings = [];
  static var t_shirt = [];
  static var makeup = [];
  static var pant = [];
  static var shoes = [];
  static var sleeper = [];
  static var electronics = [];





  static load_items(context) async {
    QueryBuilder<ParseObject> queryTodo =
        QueryBuilder<ParseObject>(ParseObject('products'));
    final ParseResponse apiResponse = await queryTodo.query();

    if (apiResponse.success && apiResponse.results != null) {
      var data = apiResponse.results;
      products = data!;
      print(products);
      load_caps(context);
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
        caps = data!;
        print(caps);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => home()), (route) => false);


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
        glasses = data!;
        print(glasses);

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
        rings = data!;
        print(rings);

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
        chains = data!;
        print(chains);

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
        t_shirt = data!;
        print(t_shirt);

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
        makeup = data!;
        print(makeup);

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
        pant = data!;
        print(pant);

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
        shoes = data!;
        print(shoes);

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
        sleeper = data!;
        print(sleeper);

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
        electronics = data!;
        print(electronics);

      }
    }
  }
}
