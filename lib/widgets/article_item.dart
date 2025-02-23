import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  const ArticleItem({super.key , required this.article});

  @override
  Widget build(BuildContext context) {
    bool active= false;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(article.image ?? "images/meal.jpg")),
            ),
          ),
          SizedBox(height: 10,),
          Text(article.name, maxLines:2, overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 20, color: Colors.black
            ),),
          GestureDetector(

            child: Text(article.description ?? "no description",
              maxLines: active ? null : 2 ,
              overflow: active ? TextOverflow.visible : TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13, color: Colors.grey
              ),),
          ),
        ],
      ),
    );
  } // end //am
}



