import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'comp/side_menu.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // default flex=1, 1/6 part
            Expanded(
              child: SideMenu(),
            ),
            Expanded(
              // 5/6 part
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
