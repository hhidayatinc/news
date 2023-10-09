import 'dart:html';

import 'package:flutter/material.dart';
import 'package:news/model/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories = <CategoryModel>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("FEB UB"),
          Text("News", style: TextStyle(color: Colors.blue))
        ],
      ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 70,
              child: ListView.builder(shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return CategoryTile(
                  imageUrl: categories[index].imageUrl,
                  categoryName: categories[index].categoryName,
                )
              }, itemCount: categories.length,),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.network(imageUrl, width: 120, height: 60,fit: BoxFit.cover,),
          Container(
            child: Text(categoryName, style: TextStyle(
              color: Colors.white
            )),
          )
        ],
      ),
    );
  }
}

