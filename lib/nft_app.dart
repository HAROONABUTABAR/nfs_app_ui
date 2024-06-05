import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/bottom_nav_bar/logic/bloc/bottom_nav_bar_bloc.dart';
import 'package:custom_widget/features/ui/on_boarding/on_boarding.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NtfApp extends StatelessWidget {
  const NtfApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: BlocProvider(
        create: (context) => BottomNavBarBloc(),
        child: MaterialApp(
          title: "NTF APP",
          theme: ThemeData(
            primaryColor: ColorsManager.primayColor,
            scaffoldBackgroundColor: ColorsManager.darkColor,
            fontFamily: "Gilroy",
          ),
          debugShowCheckedModeBanner: false,
          home: const OnBordangScreen(),
        ),
      ),
    );
  }
}
