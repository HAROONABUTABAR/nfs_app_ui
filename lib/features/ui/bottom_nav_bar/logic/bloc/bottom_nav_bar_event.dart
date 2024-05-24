part of 'bottom_nav_bar_bloc.dart';

abstract class BottomNavBarEvent {}

final class BottomNavBarChangeIndexEvent extends BottomNavBarEvent {
  final int index;

  BottomNavBarChangeIndexEvent({required this.index});
}
