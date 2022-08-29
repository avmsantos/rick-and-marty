import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste/theme/app_colors.dart';
import 'package:teste/theme/app_image.dart';

import '../pages/home_page.dart';

PreferredSizeWidget appBarWidget(BuildContext context,
    {bool isSecondPage = false}) {
  return AppBar(
    toolbarHeight: kToolbarHeight * 2.2,
    backgroundColor: AppColors.scaffoldColor,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    leading: Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: () {
          print('clicou');
          final currentRoute = ModalRoute.of(context)?.settings.name;
          if (currentRoute == MyHomePage.routeId) return;
          Navigator.of(context).pop();
        },
        child: Icon(
          isSecondPage ? Icons.arrow_back : Icons.menu,
          color: AppColors.iconColor,
        ),
      ),
    ),
    actions: [
      Container(
        alignment: Alignment.topCenter,
        child: const Icon(
          Icons.person,
          color: AppColors.iconColor,
        ),
      ),
    ],
    flexibleSpace: SafeArea(
        child: Column(
      children: [
        Image.asset(AppImages.logo),
        const Text(
          'RICK AND MORTY API',
          style: TextStyle(color: AppColors.iconColor),
        ),
      ],
    )),
  );
}
