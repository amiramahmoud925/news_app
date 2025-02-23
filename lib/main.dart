import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/manager/cubit.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/widgets/new_item.dart';
import 'package:news_app/screens/news.dart';
import 'package:news_app/widgets/article_listview.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AppCubit()..getNews(),
      child: MaterialApp(
        routes: {
          "s2": (context) => News(),
        },
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ) ,
    );
  }
}

