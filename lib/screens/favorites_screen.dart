import 'package:flutter/material.dart';
import 'package:food/models/recipe_list.dart';

class FavoriteScreen extends StatelessWidget {
  final List myIndexList;

  FavoriteScreen({this.myIndexList});

  @override
  Widget build(BuildContext context) {
    print(myIndexList);
    return SafeArea(
        child: Scaffold(
            body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: myIndexList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
               height: 200,
      width: MediaQuery.of(context).size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(recipeList[myIndexList[index]].image),
                ),
              )),
            );
          }),
    )));
  }
}