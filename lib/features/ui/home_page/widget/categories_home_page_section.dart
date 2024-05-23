import 'package:custom_widget/features/ui/home_page/logic/bloc/home_main_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CategoriesHomePageSection extends StatelessWidget {
  const CategoriesHomePageSection({
    super.key,
    required this.caregoiesList,
    required this.bloc,
    required this.blocListener,
  });

  final List<String> caregoiesList;
  final HomeMainBloc bloc;
  final HomeMainBloc blocListener;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: caregoiesList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                bloc.add(HomeMainChangeIndexEvent(index: index));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Container(
                  height: 17,
                  width: 130,
                  decoration: BoxDecoration(
                    color: blocListener.index == index
                        ? ColorsManager.primayColor
                        : ColorsManager.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      caregoiesList[index],
                      style: TextStyles.font14LightGrayRegular.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
