import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:wilson_wings/core/colors.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  LineChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.all(20),
        constraints: const BoxConstraints(maxHeight: double.infinity),
        height: 400,
        width: double.infinity,
        child: Neumorphic(
          margin: const EdgeInsets.all(20),
          style: NeumorphicStyle(
            color: neumorphicBgColor,
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(16),
            ),
            depth: 10,
            lightSource: LightSource.topLeft,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                titlesData: FlTitlesData(
                    rightTitles: AxisTitles(drawBehindEverything: true),
                    topTitles: AxisTitles(drawBehindEverything: true),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const style = TextStyle(
                            color: Color(0xff72719b),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          );
                          Widget text;
                          switch (value.toInt()) {
                            case 2:
                              text = const Text('Mar 8', style: style);
                              break;
                            case 7:
                              text = const Text('Mar 8', style: style);
                              break;
                            case 12:
                              text = const Text('Mar 13', style: style);
                              break;
                            case 13:
                              text = const Text('Mar 18', style: style);
                              break;
                            case 15:
                              text = const Text('Mar 24', style: style);
                              break;
                            default:
                              text = const Text('');
                              break;
                          }

                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            space: 10,
                            child: text,
                          );
                        },
                      ),
                      axisNameSize: 12,
                    ),
                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                      getTitlesWidget: (value, meta) {
                        const style = TextStyle(
                          color: Color(0xff75729e),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        );
                        String text;
                        switch (value.toInt()) {
                          case 1:
                            text = '1m';
                            break;
                          case 2:
                            text = '2m';
                            break;
                          case 3:
                            text = '3m';
                            break;
                          case 4:
                            text = '5m';
                            break;
                          case 5:
                            text = '6m';
                            break;
                          default:
                            return Container();
                        }

                        return Text(text,
                            style: style, textAlign: TextAlign.center);
                      },
                      showTitles: true,
                      interval: 1,
                      reservedSize: 40,
                    ))),
                gridData: FlGridData(
                  show: true,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: const Color(0xff37434d),
                      strokeWidth: 1,
                    );
                  },
                  drawVerticalLine: true,
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: const Color(0xff37434d),
                      strokeWidth: 1,
                    );
                  },
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d), width: 1),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 3),
                      FlSpot(2.6, 2),
                      FlSpot(4.9, 5),
                      FlSpot(6.8, 2.5),
                      FlSpot(8, 4),
                      FlSpot(9.5, 3),
                      FlSpot(11, 4),
                    ],
                    isCurved: true,
                    gradient: const LinearGradient(colors: [
                      Color(0xff23b6e6),
                      Color(0xff02d39a),
                    ]),
                    barWidth: 5,
                    // dotData: FlDotData(show: false),
                    belowBarData: BarAreaData(
                        show: true,
                        gradient: const LinearGradient(colors: [
                          Color(0xff23b6e6),
                          Color(0xff02d39a),
                        ])),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
