import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytimesnews/screens/home/bloc/home_events.dart';
import 'package:nytimesnews/screens/home/bloc/home_states.dart';
import 'package:nytimesnews/services/api_services.dart';

class HomeBloc extends Bloc<HomeEvents, HomeStates> {

  HomeBloc() : super(HomeUninitialized());

  @override
  Stream<HomeStates> mapEventToState(HomeEvents event) async* {
    if (event is GetHomeData) {
      try {
        yield HomeLoading();

        final resp =await  APIService().fetchArticlesByPeriod(event.period);

        if (resp != null) {
          yield HomeLoaded(resp.toList());
        } else {
          yield HomeError('error_title', 'error_body');
        }
      }
      catch (e) {
        print('${e.toString()}');
        yield HomeError('error_title', e.toString());
      }
    }
  }
}
