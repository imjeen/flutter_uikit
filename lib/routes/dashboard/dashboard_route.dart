import 'package:flutter/material.dart';
import 'package:flutter_uikit/constants.dart';
import 'package:flutter_uikit/layout/main.dart';
import 'package:flutter_uikit/responsive.dart';

import 'header.dart';
import 'my_file.dart';
import 'recent_file_table.dart';
import 'store_detail.dart';

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
                    child: Column(
                      children: [
                        MyFile(), // 我的文件
                        SizedBox(height: defaultPadding),
                        RecentFileTable(), // 最近的文件

                        if (Responsive.isMobile(context))
                          SizedBox(height: defaultPadding),
                        // 右侧部分
                        if (Responsive.isMobile(context)) StoreDetail()
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    SizedBox(width: defaultPadding),
                  // 右侧部分
                  if (!Responsive.isMobile(context))
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
