import 'package:flutter/material.dart';
import 'package:news_app/widgets/new_item.dart';

import '../model/category.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String id = data['id'];
    final String name = data['name'];
    List<CategoryItems> items = details.where((i){
      return i.categoryNumber == id ;
    }).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007C6A),
        title: Center(
          child: Text( name , style: TextStyle(
              color: Colors.black
          ),),
        ),
      ),
      body: items.isEmpty ? const Center(
        child: Text(
          "No news available for this category",
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      )
          : ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return NewItem(
            image: items[index].image,
            name: items[index].name,
            description: items[index].description,
            id: items[index].id ?? "unknown",
          );
        },
      ),
    );
  }
}
