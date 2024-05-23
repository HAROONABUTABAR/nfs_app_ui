
import 'package:custom_widget/features/ui/home_page/logic/bloc/home_main_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_page_content.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeMainBloc(),
      child: const Scaffold(
        body: HomePageContent(),
      ),
    );
  }
}
