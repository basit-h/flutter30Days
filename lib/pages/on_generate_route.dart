import 'package:flutter/material.dart';

import 'day8.dart';
import 'home_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    if (settings.name == '/') {
      return MaterialPageRoute(builder: (_) => const Day8());
    } else if (settings.name == '/home') {
      if (args is UserData) {
        return MaterialPageRoute(
          builder: (_) => HomePage(data: args),
        );
      }
    }
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('No route found error!'),
          ),
        );
      },
    );
  }
}
