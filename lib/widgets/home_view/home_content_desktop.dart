import 'package:flutter/material.dart';
import 'package:the_drone_pros/widgets/call_to_action/call_to_action.dart';
import 'package:the_drone_pros/widgets/main_content/main_content.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MainContent(),
        Expanded(
          child: Center(
            child: CallToAction('Contact Us'),
          ),
        )
      ],
    );
  }
}
