import 'package:flutter/material.dart';
import 'package:phil_iri/src/view/pages/sign_in_page.dart';
import 'package:phil_iri/src/view/pages/welcome_page.dart';

List<Widget> pages = [
  const WelcomePage(),
  const SignInPage(),
];

const Color bgColor = Color.fromARGB(255, 118, 255, 122);

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Teacher',
        ),
      ),
      body: const WelcomePage(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.assessment,
            ),
            label: 'Assessments',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.dashboard,
            ),
            label: 'Dash Board',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
            ),
            label: "Student's",
          ),
        ],
        onDestinationSelected: (value) {},
        selectedIndex: 0,
      ),
    );
  }
}
