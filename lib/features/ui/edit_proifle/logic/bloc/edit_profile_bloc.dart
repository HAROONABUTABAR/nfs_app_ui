import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc() : super(EditProfileInitial()) {
    on<EditProfileEvent>((event, emit) {});
  }

  TextEditingController userNameController =
      TextEditingController(text: "Haroon");
  TextEditingController emailController =
      TextEditingController(text: "haroonabutabar9966@gmail.com");
  TextEditingController bioController =
      TextEditingController(text: "I am Flutter developer <3");
  TextEditingController linkTwitterController = TextEditingController(
    text: "https://twitter.com/haroonabutabar",
  );
  TextEditingController instagramController = TextEditingController(
    text: "https://instagram.com/haroonabutabar",
  );
}
