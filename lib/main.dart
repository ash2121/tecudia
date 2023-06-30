import 'package:flutter/material.dart';
import 'package:tecudia/screens/home_screen.dart';
import 'package:tecudia/screens/hotel_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tecudia | Aditi Maheshwari',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF101010),
            // fontSize: 10,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF62a6f7))),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        HotelDetailsScreen.routeName: (context) => HotelDetailsScreen(),
      },
    );
  }
}
