import 'package:flutter/material.dart';

import '../models/character_api.dart';
import '../screen/display_image.dart';
import '../theme/app_colors.dart';
import 'information.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({
    Key? key,
    required this.character,
  }) : super(key: key);
  final CharacterApi? character;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
            child: DisplayImage(urlImage: character?.image ?? ""),
          ),
          Information(character: character)
        ],
      ),
    );
  }
}
