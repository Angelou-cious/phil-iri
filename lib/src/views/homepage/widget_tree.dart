import 'package:flutter/material.dart';
import 'package:phil_iri/src/notifiers/bottom_nav_notifier.dart';
import 'package:phil_iri/src/views/homepage/assessments_page.dart';
import 'package:phil_iri/src/views/homepage/dashboard_page.dart';
import 'package:phil_iri/src/views/homepage/students_profile_page.dart';
import 'package:phil_iri/src/widget/bottom_nav_bar.dart';

List<Widget> pages = [
  const AssessmentPage(),
  const DashboardPage(),
  const StudentsProfilePage(),
];

const Color bgColor = Color.fromARGB(255, 118, 255, 122);

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Teacher',
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: setBottomNavbarNotifier,
        builder: (context, value, child) {
          return pages.elementAt(value);
        },
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
