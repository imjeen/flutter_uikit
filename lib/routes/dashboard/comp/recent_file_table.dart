import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_uikit/constants.dart';
import 'package:flutter_uikit/model/recent_files.dart';

class RecentFileTable extends StatelessWidget {
  const RecentFileTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'recent files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: 0,
              columns: [
                DataColumn(label: Text('File Name')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size')),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileRow(RecentFile fileInfo) {
  return DataRow(cells: [
    DataCell(
      Row(
        children: [
          SvgPicture.asset(
            fileInfo.icon!,
            height: 30,
            width: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            child: Text(
              fileInfo.title!,
            ),
          )
        ],
      ),
    ),
    DataCell(Text(fileInfo.date!)),
    DataCell(Text(fileInfo.size!)),
  ]);
}
