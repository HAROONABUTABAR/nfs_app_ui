import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingInitial()) {
    on<OnBoardingEvent>((event, emit) {});
    on<OnBoardingInitialEvent>(_changeIndexPageView);
    on<OnBoardingIndexUpdate>(_updateIndex);
  }

  int index = 0;
  FutureOr<void> _changeIndexPageView(
      OnBoardingInitialEvent event, Emitter<OnBoardingState> emit) {
    index = event.index;
    log("This is index $index");
    emit(ChangeIndexSuccessState());
  }

  FutureOr<void> _updateIndex(
      OnBoardingIndexUpdate event, Emitter<OnBoardingState> emit) {
    event.index += 1;
    emit(UpdateIndexSuccesState());
  }
}
