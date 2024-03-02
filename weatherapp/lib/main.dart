import 'package:flutter/material.dart';
import 'homepage.dart';
import 'citypage.dart';
import 'settingspage.dart';
// https://github.com/darkmoonight/Rain/tree/main

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
        
      ),
      home: const NavigationBarExample(),
    );
  }
}

class NavigationBarExample extends StatefulWidget {
  const NavigationBarExample({super.key});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_city),
        title: Text("Moscow"),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.search)
        ],
      ),

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },

        indicatorColor: Colors.deepPurpleAccent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.cloud),
            icon: Icon(Icons.cloud),
            label: 'Weather',
          ),
          NavigationDestination(
            icon: Icon(Icons.map_rounded),
            label: 'City',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: SingleChildScrollView( 
        child: <Widget>[

          /// Home page
          HomePage(),

          /// Notifications page
          CityPage(),

          /// Messages page
          SettingPage(),
          
        ][currentPageIndex],
        )
    );
  }
}


