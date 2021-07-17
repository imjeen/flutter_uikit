import 'package:flutter/material.dart';
import 'package:flutter_uikit/constants.dart';
import 'package:flutter_uikit/layout/main.dart';
import 'package:flutter_uikit/routes/dashboard/comp/header.dart';

import 'comp/store_detail.dart';

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
              Header(), // 头部
              SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 中间部分
                  Expanded(
                    flex: 5,
                    child: Container(
                      height: 500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: defaultPadding),
                  // 右侧部分
                  Expanded(
                    flex: 2,
                    child: StoreDetail(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
