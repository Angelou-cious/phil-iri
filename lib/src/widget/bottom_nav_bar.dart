import 'package:flutter/material.dart';
import 'package:phil_iri/src/notifiers/bottom_nav_notifier.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: setBottomNavbarNotifier,
      builder: (context, setBottomNavbarValue, child) {
        return NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.assessment), label: 'Assessments'),
            NavigationDestination(
                icon: Icon(Icons.dashboard), label: 'Dashboard'),
            NavigationDestination(icon: Icon(Icons.person), label: "Student's"),
          ],
          onDestinationSelected: (int value) {
            //update the Notifier value.
            setBottomNavbarNotifier.value = value;
          },
          selectedIndex: setBottomNavbarValue,
        );
      },
    );
  }
}
