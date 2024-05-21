part of 'on_boarding_bloc.dart';

abstract class OnBoardingEvent {}

class OnBoardingInitialEvent extends OnBoardingEvent {
  final int index;
  OnBoardingInitialEvent({required this.index});
}

class OnBoardingIndexUpdate extends OnBoardingEvent {
  int index;
  OnBoardingIndexUpdate({required this.index});
}
