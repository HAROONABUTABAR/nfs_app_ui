

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_main_event.dart';
part 'home_main_state.dart';

class HomeMainBloc extends Bloc<HomeMainEvent, HomeMainState> {
  HomeMainBloc() : super(HomeMainInitial()) {
    on<HomeMainEvent>((event, emit) {});
    on<HomeMainChangeIndexEvent>(_homeMainChangeIndexEvent);
  }
  int index = -1;


  FutureOr<void> _homeMainChangeIndexEvent(HomeMainChangeIndexEvent event, Emitter<HomeMainState> emit) {
    index = event.index;
    emit(HomeMainChangeIndexSuccessState());
  }
}
