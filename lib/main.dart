import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uas_artikel/providers/artikel_poviders.dart';
import 'package:uas_artikel/screen/artikel_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ArtikelProvider>(
          create: (context) => ArtikelProvider(),
        ),
        ChangeNotifierProvider<ArtikelDetailProvider>(
          create: (context) => ArtikelDetailProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Aplikasi Artikel',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ArtikelScreen(),
      ),
    );
  }
}
