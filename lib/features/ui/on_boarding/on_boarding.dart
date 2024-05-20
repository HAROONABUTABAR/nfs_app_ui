import 'package:custom_widget/features/ui/on_boarding/logic/bloc/on_boarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'on_borading_content_view.dart';

class OnBordangScreen extends StatelessWidget {
  const OnBordangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingBloc(),
      child: const Scaffold(
        body: OnBoardingContentScreen(),
      ),
    );
  }
}
