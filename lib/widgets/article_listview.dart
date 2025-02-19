import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';
import 'package:news_app/network/api_service.dart';
import 'package:news_app/widgets/article_item.dart';

class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {

  List<Article>? x;
  @override
  void initState(){
    getNews();        // call function
    super.initState();
  }
  getNews()async{
    ApiService apiService = ApiService();
    x = await apiService.get();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return x == null ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())):
    SliverList.builder(
      itemBuilder: (context,index){
        return ArticleItem(article:x![index]);
      },
      itemCount: x!.length,
    );
  }
}
