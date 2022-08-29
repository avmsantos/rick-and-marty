import 'package:flutter/material.dart';
import 'package:teste/theme/app_colors.dart';

import '../components/character_information.dart';
import '../models/character_api.dart';
import 'display_image.dart';

class CharacterCard extends StatelessWidget {
  final CharacterApi? character;
  const CharacterCard({Key? key, required this.character, this.onTap})
      : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.iconColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 2,
                offset: const Offset(0, 2))
          ]),
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: DisplayImage(urlImage: character?.image ?? ""),
          ),
          CharacterInformation(context: context, character: character)
        ],
      ),
    );
  }
}
