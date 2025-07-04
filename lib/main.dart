import 'package:flutter/material.dart';
import 'package:phil_iri/src/auth/views/widget_tree.dart';
import 'package:phil_iri/src/views/welcome/welcome_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.light,
        ),
      ),
      // home: const WelcomePage(),
      home: const AuthWidgetTree(),
    ),
  );
}
