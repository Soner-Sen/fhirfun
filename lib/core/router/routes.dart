import 'package:fhirfun/ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../../ui/screens/pageNotFound/page_not_found_screen.dart';

const String homeScreenPath = '/home';
const String pageNotFoundPath = '/pageNotFound';

final routes = RouteMap(
    routes: {
      '/': (context) => const Redirect(homeScreenPath),
      homeScreenPath: (context) => const MaterialPage(child: HomeScreen()),
    },
    onUnknownRoute: (route) {
      return const MaterialPage(child: PageNotFoundScreen());
    });
