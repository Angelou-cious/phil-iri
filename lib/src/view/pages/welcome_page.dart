import 'package:flutter/material.dart';
import 'package:phil_iri/src/widget/button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 50),
      child: const Button(text: 'Get Started'),
    );
  }
}
