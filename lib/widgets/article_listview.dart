import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/manager/cubit.dart';
import 'package:news_app/manager/state.dart';
import 'package:news_app/main.dart';
import 'package:news_app/widgets/article_item.dart';

class ArticleListview extends StatefulWidget {
  const ArticleListview({super.key});

  @override
  State<ArticleListview> createState() => _ArticleListviewState();
}

class _ArticleListviewState extends State<ArticleListview> {


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppState>(builder: (context , state){
      if(state is LoadedState)
        {
         return SliverList.builder(
            itemBuilder: (context,index){
              return ArticleItem(article: state.x[index],);
            },
            itemCount: state.x.length,
          );
        }
      else if (state is ErrorState)
        {
         return SliverToBoxAdapter(child: Text("Error ${state.errorMessage}"));
        }
      else{
        return SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()));
      }
    });
  }
}
