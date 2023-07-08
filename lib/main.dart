import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:training/provider/main_provider.dart';
import 'package:training/screen/home.dart';

void main() {
  runApp(   MultiProvider(
    providers: [
      ChangeNotifierProvider<MainProvider>(
          create: (_) => MainProvider()),

    ],
    child: const MyApp(),
  ),);}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Training Series',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  fontSize: 20.0,
                  decoration: TextDecoration.underline,
                  color: Colors.transparent))),
      home: const HomeMobScreen(),
    );
  }
}

