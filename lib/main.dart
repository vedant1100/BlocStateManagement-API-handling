import 'package:blocstatemanagement/features/posts/ui/displayPosts.dart';
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
      theme:ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.grey
        )
      ),
      home: const Displayposts(),
    );
  }
}
