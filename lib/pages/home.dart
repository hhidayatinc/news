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
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 70,
              child: ListView.builder(shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                return CategoryTile(
                  imageUrl: categories[index].imageUrl,
                  categoryName: categories[index].categoryName,
                );
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
    return GestureDetector(
      onTap: (() {
        
      }),
    child: Container(
      margin: EdgeInsets.only(right: 16),
      child: Stack(
        children: <Widget>[
          Image.network(imageUrl, width: 120, height: 60,fit: BoxFit.cover,),
          Container(
            alignment: Alignment.center,
            width: 120, height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black26,
            ),
            child: Text(categoryName, style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500
            )),
          )
        ],
      ),
    ));
  }
}

class BlogTile extends StatelessWidget {
  late final String imageUrl, title, desc;
  BlogTile({required this.imageUrl, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(title),
          Text(desc)
        ],
      ),
    );
  }
}




