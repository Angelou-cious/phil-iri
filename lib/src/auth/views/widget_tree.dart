import 'package:flutter/material.dart';
import 'package:phil_iri/src/auth/views/login_page.dart';
import 'package:phil_iri/src/auth/views/registration_page.dart';

List<Widget> pages = [
  const LoginPage(),
  const RegistrationPage(),
];

class AuthWidgetTree extends StatefulWidget {
  const AuthWidgetTree({super.key});

  @override
  State<AuthWidgetTree> createState() => AuthWidgetTreeState();
}

class AuthWidgetTreeState extends State<AuthWidgetTree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: AppBar(
              backgroundColor: Colors.teal[200],
              toolbarHeight: 150,
              bottom: const TabBar(
                tabs: [
                  Tab(text: 'Login'),
                  Tab(text: 'Register'),
                ],
                indicatorColor: Colors.white,
              ),
              title: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(style: TextStyle(fontSize: 50), 'PhilIRI'),
                    Text(style: TextStyle(fontSize: 30), 'Welcome to PhilIRI'),
                    Text(
                        style: TextStyle(fontSize: 15),
                        'Register or Login bellow to manage your assessments.'),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: pages.elementAt(0)),
              Center(child: pages.elementAt(1)),
            ],
          ),
        ),
      ),
    );
  }
}
