import 'package:flutter/material.dart';
import 'package:flutter_uikit/layout/aside.dart';

class Layout extends StatelessWidget {
  const Layout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
