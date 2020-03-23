import 'package:flutter/material.dart';
import 'package:the_drone_pros/widgets/call_to_action/call_to_action.dart';
import 'package:the_drone_pros/widgets/main_content/main_content.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MainContent(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Contact Us'),
      ],
    );
  }
}
