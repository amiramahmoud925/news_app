import 'package:flutter/material.dart';
import 'package:news_app/widgets/article_item.dart';
import 'package:news_app/widgets/category_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/article_listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF017F74),
        title: Center(
          child: Text("News App" ,style: TextStyle(
              color: Colors.black ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryListview()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("General News" , style: TextStyle(
                color: Colors.black , fontSize: 20,
              ),),
            ),
          ),
          SliverToBoxAdapter(child: ArticleListview()),
        ],
      ),
    );
  }
}

