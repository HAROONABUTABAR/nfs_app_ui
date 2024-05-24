import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/features/ui/search/logic/bloc/search_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/model/categories_model.dart';
import 'data/model/featured_collections_medel.dart';
import 'widget/categories_search_section.dart';
import 'widget/featured_collections_section.dart';
import 'widget/search_with_text_filed_section.dart';

class SearchViewContent extends StatelessWidget {
  const SearchViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SearchBloc>();
    List<CategriesModel> categriesModel = [
      CategriesModel(
          categorieName: "Art",
          imageCategorie: "assets/images/search/categories1.png"),
      CategriesModel(
          categorieName: "Collectibles",
          imageCategorie: "assets/images/search/categories2.png"),
      CategriesModel(
          categorieName: "Domain Names",
          imageCategorie: "assets/images/search/categories3.png"),
    ];
    List<FeaturedCollectionsModel> featuredCollectionsModel = [
      FeaturedCollectionsModel(
          name: "DourDarcels",
          imageMain: "assets/images/search/imageMain1.png",
          imageSecond: "assets/images/search/imageSecond1.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "CyberBrokersDeployer",
          imageMain: "assets/images/search/imageMain2.png",
          imageSecond: "assets/images/search/imageSecond2.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "BoredApeYachtClub",
          imageMain: "assets/images/search/imageMain3.png",
          imageSecond: "assets/images/search/imageSecond3.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "Azuki",
          imageMain: "assets/images/search/imageMain4.png",
          imageSecond: "assets/images/search/imageSecond4.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
    ];
    return ListView(
      children: [
        verticalSpace(22),
        SearchWithTextFiledSection(bloc: bloc),
        verticalSpace(28),
        CategoriesSearchSection(categriesModel: categriesModel),
        verticalSpace(28),
        FeaturedCollectionsSection(
            featuredCollectionsModel: featuredCollectionsModel),
        verticalSpace(30),
      ],
    );
  }
}
