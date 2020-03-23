import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_drone_pros/locator.dart';
import 'package:the_drone_pros/routing/route_names.dart';
import 'package:the_drone_pros/routing/router.dart';
import 'package:the_drone_pros/services/navigation_service.dart';
import 'package:the_drone_pros/widgets/centered_view/centered_view.dart';
import 'package:the_drone_pros/widgets/nav_drawer/navigation_drawer.dart';
import 'package:the_drone_pros/widgets/navigation_bar/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
