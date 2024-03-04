import 'package:flutter/material.dart';
import 'homepage.dart';
import 'citypage.dart';
import 'settingspage.dart';

void main() {
 runApp(const MyApp());
}

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);

 @override
 _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 ThemeMode _themeMode = ThemeMode.dark;

 void _toggleThemeMode() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
 }

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(),
      darkTheme: ThemeData.dark().copyWith(),
      themeMode: _themeMode,
      home: NavigationBarExample(toggleThemeMode: _toggleThemeMode),
    );
 }
}

class NavigationBarExample extends StatefulWidget {
 final VoidCallback toggleThemeMode;

 const NavigationBarExample({super.key, required this.toggleThemeMode});

 @override
 NavigationBarExampleState createState() => NavigationBarExampleState();
}

class NavigationBarExampleState extends State<NavigationBarExample> {
 int currentPageIndex = 0;

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_city),
        title: Text("Moscow"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Theme.of(context).brightness == Brightness.dark ? Icons.brightness_2 : Icons.sunny),
            onPressed: widget.toggleThemeMode,
          ),
          Icon(Icons.search),
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
