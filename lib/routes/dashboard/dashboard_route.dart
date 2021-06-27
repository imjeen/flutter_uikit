import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit/layout/main.dart';
import 'package:flutter_uikit/routes/dashboard/comp/header.dart';

class DashboardRoute extends StatelessWidget {
  const DashboardRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Header()
              // Container(
              //   height: 400,
              //   width: double.infinity,
              //   color: Colors.green,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
