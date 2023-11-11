import 'package:assignment/home/screens/home_screen.dart';
import 'package:assignment/home/screens/rooms_and_guests_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Assignment',
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          RoomsAndGuestsScreen.routeName: (context) =>
              const RoomsAndGuestsScreen()
        },
        initialRoute: HomeScreen.routeName);
  }
}
