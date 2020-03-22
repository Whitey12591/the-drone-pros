import 'package:flutter/material.dart';
import 'package:the_drone_pros/locator.dart';
import 'package:the_drone_pros/views/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Drone Pros',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Open Sans',
              )),
      home: HomeView(),
    );
  }
}
