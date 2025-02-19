import 'package:flutter/material.dart';
import 'package:news_app/model/category.dart';

class CategoryItem extends StatelessWidget {
  final Category x;
  const CategoryItem({super.key , required this.x});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: (){
           Navigator.pushNamed(context, "s2" ,
               arguments:{
           'category' : x.name
           });
        },
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xFF007C6A),
          backgroundImage: AssetImage("${x.image}"),
          child: Text("${x.name}",style: TextStyle(
              color: Colors.white,fontSize: 20),
          ),
        ),
      ),
    );
  }
}
