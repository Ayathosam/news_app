import 'package:flutter/material.dart';
import 'package:news_app1/network/remote/api_manager.dart';

import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("News",
                    style: TextStyle(color: Colors.black, fontSize: 28)),
                Text("Cloud",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 28)),
              ],)
        ),
        body:
        FutureBuilder(future: ApiManager.getsources(), builder:,);
        Padding(
        padding: const EdgeInsets.all(8.0),
    child: Column(children: [
    CategoriesListView(),
    SizedBox(height: 15,),
    Expanded(child: NewsListView())
    ],),
    )

    );
  }
}



