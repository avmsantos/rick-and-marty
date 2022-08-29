import 'package:flutter/material.dart';

import '../components/app_bar_widget.dart';
import '../components/character_details.dart';
import '../homeController/home_controller.dart';
import '../models/character_api.dart';

class DetailsPage extends StatelessWidget {
  final CharacterApi? character;
  static const routeId = '/details';
  final int idCard;
  const DetailsPage({Key? key, required this.idCard, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context, isSecondPage: true),
      body: getCharacters(),
    );
  }

  FutureBuilder<List<CharacterApi>> getCharacters() =>
      FutureBuilder<List<CharacterApi>>(
        future: homeController.getCharacters(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox(
              height: 300,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          final List<CharacterApi> characters = snapshot.data ?? [];
          final bool characterCounter = characters.isNotEmpty;
          if (characterCounter) {
            return _myCharacters(characters);
          } else {
            return Container();
          }
        },
      );

  Widget _myCharacters(List<CharacterApi> characters) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 1,
      itemBuilder: (context, index) {
        return CharacterDetails(
          character: characters[idCard],
        );
      },
    );
  }
}
