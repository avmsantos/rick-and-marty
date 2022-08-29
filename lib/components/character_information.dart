import 'package:flutter/material.dart';

import '../models/character_api.dart';

class CharacterInformation extends StatelessWidget {
  const CharacterInformation({
    Key? key,
    required this.context,
    required this.character,
  }) : super(key: key);

  final BuildContext context;
  final CharacterApi? character;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            character?.name ?? " ",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
            ),
            softWrap: true,
          ),
        ],
      ),
    );
  }
}
