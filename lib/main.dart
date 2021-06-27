import 'package:flutter/material.dart';
import 'package:flutter_uikit/routes/about/about_route.dart';
import 'package:flutter_uikit/routes/dashboard/dashboard_route.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter UI Kit',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF212332),
          canvasColor: Color(0xFF2A2D3E),
        ),
        initialRoute: '/',
        // 注册命名路由表
        routes: <String, WidgetBuilder>{
          "/": (context) => new DashboardRoute(),
          "/about": (context) => new AboutRoute(),
        });
  }
}
