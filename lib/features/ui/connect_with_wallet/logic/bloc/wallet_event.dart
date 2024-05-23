part of 'wallet_bloc.dart';

abstract class WalletEvent {}

class WalletCheckEvent extends WalletEvent {
  final int index;
  WalletCheckEvent({required this.index});
}
