import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/network/api_service.dart';
import 'package:news_app/widgets/article_item.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override

  
  Widget build(BuildContext context) {
    Map<String,dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ;
    String name = data['category'];
    Category category = categories.firstWhere((value){
      return value.name == name ;
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007C6A),
        title: Center(
          child: Text( category.name , style: TextStyle(
              color: Colors.black
          ),),
        ),
      ),

    );
  }
}
