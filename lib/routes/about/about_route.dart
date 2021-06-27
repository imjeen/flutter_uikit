import 'package:flutter/material.dart';
import 'package:flutter_uikit/layout/main.dart';

class AboutRoute extends StatelessWidget {
  const AboutRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Text("about"),
    );
  }
}
