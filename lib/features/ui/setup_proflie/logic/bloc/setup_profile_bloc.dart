import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'setup_profile_event.dart';
part 'setup_profile_state.dart';

class SetupProfileBloc extends Bloc<SetupProfileEvent, SetupProfileState> {
  SetupProfileBloc() : super(SetupProfileInitial()) {
    on<SetupProfileEvent>((event, emit) {});
  }

  TextEditingController nameUserController = TextEditingController();
  TextEditingController emailConteroller = TextEditingController();
  TextEditingController bioController = TextEditingController();
}
