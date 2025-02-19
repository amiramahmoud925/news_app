import 'package:dio/dio.dart';
import 'package:news_app/model/article.dart';

class ApiService{
Dio x = Dio();

Future<List<Article>> get()async{
  var respone = await x.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=cf32d7e3dad3471d9cbe9a9244124b72");
  Map <String , dynamic> json = respone.data;
  List<Article> articles = [];
  for(var item in json["articles"])
  {
    articles.add(Article(image: item["urlToImage"],
        name: item["title"], description: item["description"]));
  }
  return articles;
  }
}

class Api{
  Dio x = Dio();

  Future<List<Article>> get()async{
    var respone = await x.get("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=cf32d7e3dad3471d9cbe9a9244124b72");
    return respone.data;
  }

  Future<List<Article>> post()async{
    var respone = await x.post("https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=cf32d7e3dad3471d9cbe9a9244124b72");
    return respone.data;
  }

}
