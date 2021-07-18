import 'package:flutter/material.dart';
import 'package:flutter_uikit/controller/menu_controller.dart';
import 'package:flutter_uikit/responsive.dart';
import 'package:provider/provider.dart';

import 'aside.dart';

class Layout extends StatelessWidget {
  const Layout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: _BaseLayout(child: child),
    );
  }
}

class _BaseLayout extends StatelessWidget {
  const _BaseLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: Aside(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 左边栏
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex=1, 1/6 part
                child: Aside(),
              ),
            Expanded(
              // 5/6 part
              flex: 5,
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
