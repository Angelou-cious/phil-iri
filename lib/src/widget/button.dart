import 'package:flutter/material.dart';
import 'package:phil_iri/src/view/pages/sign_in_page.dart';

class Button extends StatefulWidget {
  const Button({
    super.key,
    required this.text,
  });

  final String text;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    //
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;
    final height = mediaQuery.size.height;

    return TextButton(
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const SignInPage();
            },
          ),
        );
      },
      style: TextButton.styleFrom(
        fixedSize: Size(
          width * 0.8,
          height * 0.1,
        ),
        backgroundColor: const Color.fromARGB(255, 160, 220, 221),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
      child: Text(
        style: TextStyle(
          color: Colors.green[300],
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        widget.text,
      ),
    );
  }
}
