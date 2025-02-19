import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_item.dart';
import 'package:news_app/model/category.dart';


class CategoryListview extends StatelessWidget {
  const CategoryListview({super.key });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return CategoryItem(x:categories[index],);
        } , itemCount: categories.length,
      ),
    );
  }
}

