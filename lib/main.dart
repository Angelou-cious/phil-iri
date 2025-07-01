import 'package:flutter/material.dart';
import 'package:phil_iri/src/view/widget_tree.dart';

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
      home: const WidgetTree(),
    ),
  );
}
