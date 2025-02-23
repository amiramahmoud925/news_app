import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/manager/state.dart';
import 'package:news_app/network/api_service.dart';
import 'package:news_app/model/article.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit():super(InitialState());

  getNews()async{
    emit(LoadingState());
    ApiService apiService = ApiService();

    try {
      var json = await apiService.get(endPoints:"v2/top-headlines?country=us&category=business&apiKey=cf32d7e3dad3471d9cbe9a9244124b72");
      List<Article> articles = [];
      for(var item in json["articles"])
      {
        articles.add(Article(image: item["urlToImage"],
            name: item["title"], description: item["description"]));
      }
      emit(LoadedState(x: articles));
    } on Exception catch (error) {
      emit(ErrorState(errorMessage:error.toString()));
    }
  }
}
