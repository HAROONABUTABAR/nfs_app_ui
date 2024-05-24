import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'wallet_event.dart';
part 'wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc() : super(WalletInitial()) {
    on<WalletEvent>((event, emit) {});
    on<WalletCheckEvent>(_walletCheckEvent);
  }

  TextEditingController walletController = TextEditingController();
  int index = -1;
  FutureOr<void> _walletCheckEvent(
      WalletCheckEvent event, Emitter<WalletState> emit) {
    index = event.index;
    emit(ChangeButtonSuccess());
  }
}
