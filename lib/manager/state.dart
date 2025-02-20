import 'package:news_app/model/article.dart';

abstract class AppState{}
class InitialState extends AppState{}
class LoadedState extends AppState{
  final List<Article> x;

  LoadedState({required this.x});
}
class ErrorState extends AppState{
  final String errorMessage;

  ErrorState({required this.errorMessage});
}
class LoadingState extends AppState{}