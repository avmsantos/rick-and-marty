import 'package:flutter/material.dart';
import 'package:teste/components/app_bar_widget.dart';

import '../homeController/home_controller.dart';
import '../models/character_api.dart';
import '../screen/character_card.dart';
import 'details_page.dart';

class MyHomePage extends StatefulWidget {
  static const routeId = '/';
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: getCharacters(),
          ),
        ),
      ),
    );
  }

  FutureBuilder<List<CharacterApi>> getCharacters() =>
      FutureBuilder<List<CharacterApi>>(
        future: homeController.getCharacters(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox(
              height: 300,
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final List<CharacterApi> characters = snapshot.data ?? [];
          final bool characterCounter = characters.isNotEmpty;
          if (characterCounter) {
            return _buildMyCharacters(characters);
          } else {
            return Container();
          }
        },
      );

  Widget _buildMyCharacters(List<CharacterApi> characters) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: characters.length,
      itemBuilder: (context, index) {
        return CharacterCard(
          character: characters[index],
          onTap: () => Navigator.of(context).pushNamed(
            DetailsPage.routeId,
            arguments: characters[index].id,
          ),
        );
      },
    );
  }
}
