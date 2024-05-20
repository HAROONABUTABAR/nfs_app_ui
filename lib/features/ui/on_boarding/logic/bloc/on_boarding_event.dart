part of 'on_boarding_bloc.dart';

abstract class OnBoardingEvent {}

class OnBoardingInitialEvent extends OnBoardingEvent {
  final int index;
  OnBoardingInitialEvent({required this.index});
}
