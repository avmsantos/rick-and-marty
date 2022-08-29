import 'package:flutter/material.dart';

import '../models/character_api.dart';

class Information extends StatelessWidget {
  const Information({
    Key? key,
    required this.character,
  }) : super(key: key);

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
          Text(
            character?.gender ?? " ",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
            ),
            softWrap: true,
          ),
          Text(
            character?.location ?? " ",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
            ),
            softWrap: true,
          ),
          Text(
            character?.origin ?? " ",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
            ),
            softWrap: true,
          ),
          Text(
            character?.species ?? " ",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black.withOpacity(0.8),
            ),
            softWrap: true,
          ),
          Text(
            character?.status ?? " ",
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
