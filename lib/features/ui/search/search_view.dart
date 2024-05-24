import 'package:custom_widget/features/ui/search/logic/bloc/search_bloc.dart';
import 'package:custom_widget/features/ui/search/search_view_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: const Scaffold(
        body: SearchViewContent(),
      ),
    );
  }
}
