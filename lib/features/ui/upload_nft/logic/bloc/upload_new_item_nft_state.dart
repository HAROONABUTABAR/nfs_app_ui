part of 'upload_new_item_nft_bloc.dart';

abstract class UploadNewItemNftState {}

class UploadNewItemNftInitial extends UploadNewItemNftState {}

class UploadNewItemLoadingState extends UploadNewItemNftState {}

class UploadNewItemSuccessState extends UploadNewItemNftState {}

class UploadNewItemErrorState extends UploadNewItemNftState {
  final String message;

  UploadNewItemErrorState({required this.message});
}

class UploadTextNameState extends UploadNewItemNftState {}

class UploadTextLinkState extends UploadNewItemNftState {}

class UploadTextBioState extends UploadNewItemNftState {}
