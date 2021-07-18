import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sections: paiChartSelectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding / 2),
                Text(
                  '29',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text('of 128GB')
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionDatas = [
  PieChartSectionData(
    color: Colors.pink,
    value: 10,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: Colors.yellow,
    value: 20,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: primaryColor,
    value: 30,
    showTitle: false,
    radius: 25,
  ),
];
