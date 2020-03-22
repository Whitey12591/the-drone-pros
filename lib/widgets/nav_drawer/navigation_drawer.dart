import 'package:flutter/material.dart';
import 'package:the_drone_pros/routing/route_names.dart';
import 'package:the_drone_pros/widgets/nav_drawer/navigation_drawer_header.dart';
import 'package:the_drone_pros/widgets/nav_drawer/drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Home', Icons.videocam, HomeRoute),
          DrawerItem('About', Icons.help, AboutRoute),
        ],
      ),
    );
  }
}
