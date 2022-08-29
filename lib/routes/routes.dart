import 'package:teste/pages/home_page.dart';

abstract class Routes {
  static const String homePage = "/";
  //static const String details = "/PageDetails";

  static final routes = {
    homePage: (context) => const MyHomePage(),
  };
}
