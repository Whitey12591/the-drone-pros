import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'DRONE SERVICES.\nMADE EASY',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 70),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'Chicagolands most experienced drone consulting service. From training to rentals, we can solve any drone need.',
              style: TextStyle(
                fontSize: 21,
                height: 1.7,
              ))
        ],
      ),
    );
  }
}
