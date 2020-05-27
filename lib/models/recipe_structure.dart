import 'package:flutter/material.dart';

class RecipeStructure {
  Map<String, String> ingredients;
  List<String> stepsForCooking;
  String name;
  String ename;
  String description;
  String type;
  String image;
  String mainItem;

  RecipeStructure(
      {@required this.name,
      this.ename,
      this.mainItem,
      this.description,
      this.ingredients,
      this.stepsForCooking,
      this.type,
      this.image});
}