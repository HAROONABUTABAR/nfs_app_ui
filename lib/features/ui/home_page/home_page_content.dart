import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/home_page/data/models/model_lest_trending.dart';
import 'package:custom_widget/features/ui/home_page/logic/bloc/home_main_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helpers/spacing.dart';
import 'data/models/prflie_slider_model.dart';
import 'widget/balance_card_section.dart';
import 'widget/categories_home_page_section.dart';
import 'widget/slider_home_card_section.dart';
import 'widget/trending_with_ccollection_section.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> caregoiesList = ["Trending", "Art", "Gaming"];
    List<ProfileModel> profileModel = [
      ProfileModel(
        mainImage: "assets/images/home_image/home_main_for_profile.png",
        nameMain: "Mosu #1930",
        timeLeft: "102d Left",
        ethNumber: "2,25 ETH",
        profilePhoto: "assets/images/home_image/profileVerified.png",
        nameProfile: "Karafuru",
      ),
      ProfileModel(
        mainImage: "assets/images/home_image/profile_cloneX.png",
        nameMain: "CloneX #1172",
        timeLeft: "3hrs Left",
        ethNumber: "10,7 ETH",
        profilePhoto: "assets/images/home_image/profile_cloneXsmoll.png",
        nameProfile: "RTFKTLONEXTM",
      ),
    ];

    List<TrendingCollectinsModel> trendingCollectinsModel = [
      TrendingCollectinsModel(
          mainName: "Ghozali Everyday",
          subName: "Ghozali Everyday",
          mainImage: "assets/images/home_image/trending1.png",
          ethLogo: "assets/images/home_image/logos_ethereum.svg",
          mainEth: "4,218",
          subEth: "+23,00%",
          indexImage: 1,
          color: ColorsManager.successColor),
      TrendingCollectinsModel(
          mainName: "Cryptopunks",
          subName: "Cryptopunks",
          mainImage: "assets/images/home_image/trending2.png",
          ethLogo: "assets/images/home_image/logos_ethereum.svg",
          mainEth: "4,017",
          subEth: "-32,01%",
          indexImage: 2,
          color: ColorsManager.dangerColor),
      TrendingCollectinsModel(
          mainName: "Ghozali Everyday",
          subName: "Ghozali Everyday",
          mainImage: "assets/images/home_image/trending1.png",
          ethLogo: "assets/images/home_image/logos_ethereum.svg",
          mainEth: "4,218",
          subEth: "+23,00%",
          indexImage: 1,
          color: ColorsManager.successColor),
      TrendingCollectinsModel(
          mainName: "Cryptopunks",
          subName: "Cryptopunks",
          mainImage: "assets/images/home_image/trending2.png",
          ethLogo: "assets/images/home_image/logos_ethereum.svg",
          mainEth: "4,017",
          subEth: "-32,01%",
          indexImage: 2,
          color: ColorsManager.dangerColor),
    ];

    var bloc = context.read<HomeMainBloc>();
    var blocListener = context.watch<HomeMainBloc>();
    return ListView(
      children: [
        verticalSpace(20),
        const BalanceCardSection(),
        verticalSpace(40),
        CategoriesHomePageSection(
          caregoiesList: caregoiesList,
          bloc: bloc,
          blocListener: blocListener,
        ),
        verticalSpace(22),
        SizedBox(
          height: 490,
          width: 400,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: profileModel.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => SliderHomeCardSection(
              model: profileModel[index],
            ),
          ),
        ),
        verticalSpace(20),
        TrendingWithCollectionSection(
          trendingCollectinsModel: trendingCollectinsModel,
        ),
        verticalSpace(20),
      ],
    );
  }
}
