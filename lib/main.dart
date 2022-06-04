import 'package:flutter/material.dart';
import 'package:newsapp/screens/homescreen.dart';
import 'package:newsapp/vm/listviewmodel.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ListViewModel(),
          )
        ],
        child: HomeScreen() ,
      ),
    );
  }
}
