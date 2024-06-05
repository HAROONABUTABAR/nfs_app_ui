import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'upload_new_item_nft_event.dart';
part 'upload_new_item_nft_state.dart';

class UploadNewItemNftBloc
    extends Bloc<UploadNewItemNftEvent, UploadNewItemNftState> {
  UploadNewItemNftBloc() : super(UploadNewItemNftInitial()) {
    on<UploadNewItemNftEvent>((event, emit) {});
    on<UploadFromSectionEvent>(_uploadFromSectionEvent);
  }

  TextEditingController nameEditingController = TextEditingController();
  TextEditingController linkExternalController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  FutureOr<void> _uploadFromSectionEvent(
      UploadFromSectionEvent event, Emitter<UploadNewItemNftState> emit) {
    try {
      emit(UploadNewItemLoadingState());
      if (nameEditingController.text.isEmpty) {
        emit(UploadTextNameState());
      } else if (linkExternalController.text.isEmpty) {
        emit(UploadTextLinkState());
      } else if (bioController.text.isEmpty) {
        emit(UploadTextBioState());
      } else {
        emit(UploadNewItemSuccessState());
      }
    } catch (e) {}
  }
}
