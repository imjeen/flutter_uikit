import 'package:flutter/material.dart';
import 'package:flutter_uikit/constants.dart';
import 'package:flutter_uikit/routes/about/about_route.dart';
import 'package:flutter_uikit/routes/dashboard/dashboard_route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter UI Kit',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: bgColor,
            canvasColor: secondaryColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)),
        initialRoute: '/',
        // 注册命名路由表
        routes: <String, WidgetBuilder>{
          "/": (context) => new DashboardRoute(),
          "/about": (context) => new AboutRoute(),
        });
  }
}
