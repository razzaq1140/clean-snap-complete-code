import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class monthlyPerformanceChart extends StatelessWidget {
  const monthlyPerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyles = textTheme(context).labelSmall!.copyWith(letterSpacing: 0);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 330,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: colorScheme(context).onPrimary,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
// Container(
//   width: double.infinity,
//   padding: const EdgeInsets.symmetric(horizontal: 20),
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Text(
//         "Total Income",
//         style: textTheme(context).titleSmall!.copyWith(
//           letterSpacing: 0,
//           // color: AppColor.subHeadingClr,
//         ),
//       ),
//       const SizedBox(width: 20),
//       Expanded(
//         child: Container(
//           height: 38,
//           width: double.infinity,
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           decoration: BoxDecoration(
//               border: Border.all(
//                 color: colorScheme(context).primary,
//               ),
//               color: colorScheme(context).secondary,
//               borderRadius:
//               const BorderRadius.all(Radius.circular(6))),
//           child: DropdownButton<String>(
//             isExpanded: true,
//             underline: const SizedBox.shrink(),
//             value: _selectedDuration,
//             onChanged: (newValue) {
//               setState(() {
//                 _selectedDuration = newValue!;
//               });
//             },
//             items: _durationList.map((item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(
//                   item,
//                   style: txtTheme(context).bodyMedium!.copyWith(
//                     letterSpacing: 0,
//                     color: colorScheme(context).primary,
//                   ),
//                 ),
//               );
//             }).toList(),
//             icon: Icon(
//               Icons.keyboard_arrow_down,
//               color: colorScheme(context).primary,
//             ),
//             iconSize: 24,
//             iconEnabledColor: AppColor.inputTextClr,
//             iconDisabledColor: AppColor.inputTextClr,
//           ),
//         ),
//       ),
//     ],
//   ),
// ),
          Expanded(
            child: LineChart(
              LineChartData(

                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 10,
                titlesData: FlTitlesData(
                  show: true,
                  leftTitles: const AxisTitles(),
                  rightTitles: const AxisTitles(),
                  topTitles: const AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 2:
                            return  Text('10 Aug',style: textStyles,);
                          case 4:
                            return Text('11 Aug',style: textStyles);
                          case 6:
                            return Text('12 Aug',style: textStyles);
                          case 8:
                            return Text('13 Aug',style: textStyles);
                          case 10:
                            return Text('14 Aug',style: textStyles);
                          default:
                            return Text('');
                        }
                      },
                      interval: 1,
                    ),
                  ),
                ),
                clipData: const FlClipData(
                  top: false,
                  bottom: true,
                  left: false,
                  right: false,
                ),
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 7),
                      const FlSpot(1, 5),
                      const FlSpot(2, 7),
                      const FlSpot(3, 7),
                      const FlSpot(4, 6),
                      const FlSpot(5, 7),
                      const FlSpot(6, 4),
                      const FlSpot(7, 5),
                      const FlSpot(8, 4),
                      const FlSpot(9, 8),
                      const FlSpot(10, 5),
                      const FlSpot(11, 6),
                      // const FlSpot(10, 7),
                      // const FlSpot(11, 9),
                    ],

                    isCurved: true,
                    color: colorScheme(context).primary,
                    barWidth: 2,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(4, 116, 237, 0.42),
                            Color.fromRGBO(4, 116, 237, 0),
                          ]),
                      show: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
