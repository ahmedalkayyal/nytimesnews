import 'package:nytimesnews/model/test_article/test_article.dart';

abstract class HomeStates {}

class HomeUninitialized extends HomeStates {}

class HomeLoading extends HomeStates {}

class HomeLoaded extends HomeStates {
  final List<TestArticle?> data;


  HomeLoaded(this.data,);
}

class HomeError extends HomeStates {
  final String title;
  final String body;

  HomeError(this.title, this.body);
}