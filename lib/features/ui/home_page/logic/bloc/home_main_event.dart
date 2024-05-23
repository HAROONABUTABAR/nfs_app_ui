part of 'home_main_bloc.dart';

abstract class HomeMainEvent {}

final class HomeMainChangeIndexEvent extends HomeMainEvent {
  final int index;
  HomeMainChangeIndexEvent({required this.index});
}
