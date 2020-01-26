import 'package:flutter/material.dart';
import 'package:the_drone_pros/widgets/call_to_action/call_to_action.dart';
import 'package:the_drone_pros/widgets/centered_view/centered_view.dart';
import 'package:the_drone_pros/widgets/course_details/course_details.dart';
import 'package:the_drone_pros/widgets/navigation_bar/navigation_bar.dart';

void main() => runApp(MyApp());

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

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Contact Us'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
