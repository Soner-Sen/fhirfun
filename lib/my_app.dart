import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import 'core/router/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: const RoutemasterParser(),
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
