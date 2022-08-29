import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teste/pages/details_page.dart';
import 'package:teste/pages/home_page.dart';

import 'models/character_api.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.character}) : super(key: key);

  final CharacterApi? character;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case MyHomePage.routeId:
            return MaterialPageRoute(
              builder: (context) {
                return const MyHomePage();
              },
            );
          case DetailsPage.routeId:
            final args = settings.arguments;
            return MaterialPageRoute(
              builder: (context) {
                return DetailsPage(
                  character: character,
                  idCard: args as int,
                );
              },
            );
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      home: const MyHomePage(),
      //initialRoute: Routes.homePage,
      //routes: Routes.routes,
    );
  }
}
