import 'package:demo/Home_withoutPro/Home.dart';
import 'package:demo/Home_withPro/Home2.dart';
import 'package:demo/Providers/lList_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => NumbersListProvider()))
      ],
      child: const MaterialApp(
        home: HomePage2()

      ),
    );
  }
}
