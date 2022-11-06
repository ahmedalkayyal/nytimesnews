import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytimesnews/screens/home/bloc/home_bloc.dart';
import 'package:nytimesnews/screens/home/bloc/home_events.dart';
import 'package:nytimesnews/screens/home/bloc/home_states.dart';
import 'package:nytimesnews/screens/widgets/article_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final HomeBloc _bloc = HomeBloc();

  @override
  void initState() {
    super.initState();
    _bloc.add(GetHomeData(7));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.greenAccent,
        title: const Text("NY Times Viewed Articles"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                   // showSearch(context: context, delegate: MySearchDelegate());
                  }),
            ],
          ),
        ],
      ),

      drawer: const Drawer(),
      body: BlocBuilder(
        bloc: _bloc,
        builder: (context, HomeStates state) {
      if (state is HomeUninitialized || state is HomeLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is HomeError) {
        return const Center(
          child: Text("Error"),
        );
      }
      if (state is HomeLoaded) {
        return ListView.builder(
            itemCount: state.data.length,
            itemBuilder: (context, int i) {
              return ArticleCard(
                uri: "${state.data[i]!.url}",
                publishedDate: "${state.data[i]!.published_date}",
                title: "${state.data[i]!.title}",
                abstract: "${state.data[i]!.abstract}",
                section: "${state.data[i]!.section}",
                multiMedia: state.data[i]!.media!.toList(),

              );
            });
      } else {
        return Container();
      }
        },
      ),

    );
  }
}
