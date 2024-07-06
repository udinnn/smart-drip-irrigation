import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

const cardBackgroundColor = Color.fromARGB(255, 206, 207, 200);
const primaryColor = Color(0xFF3B614A);
const secondaryColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xffE7E8E3);
const selectionColor = Color.fromARGB(255, 136, 178, 140);

const defaultPadding = 20.0;

class MonitoringPage extends StatelessWidget {
  const MonitoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Real-time monitoring',
            style: TextStyle(
                color: Color(0xFF3B614A),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 40),
          child: SizedBox(
            width: 350,
            height: 580,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 350,
                    child: CustomCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Suhu ruangan",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Poppins',
                              color: Color(0xFF3B614A),
                            ),
                          ),
                          const SizedBox(height: 20),
                          AspectRatio(
                            aspectRatio: 16 / 6,
                            child: LineChart(
                              LineChartData(
                                lineTouchData: const LineTouchData(
                                  handleBuiltInTouches: true,
                                ),
                                gridData: const FlGridData(show: false),
                                titlesData: FlTitlesData(
                                  rightTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  topTitles: const AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        return data.bottomTitleSuhu[
                                                    value.toInt()] !=
                                                null
                                            ? SideTitleWidget(
                                                axisSide: meta.axisSide,
                                                child: Text(
                                                  data.bottomTitleSuhu[
                                                          value.toInt()]
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF3B614A),
                                                  ),
                                                ),
                                              )
                                            : const SizedBox();
                                      },
                                    ),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        return data.leftTitleSuhu[
                                                    value.toInt()] !=
                                                null
                                            ? Text(
                                                data.leftTitleSuhu[
                                                        value.toInt()]
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xFF3B614A),
                                                ),
                                              )
                                            : const SizedBox();
                                      },
                                      showTitles: true,
                                      interval: 1,
                                      reservedSize: 40,
                                    ),
                                  ),
                                ),
                                borderData: FlBorderData(show: false),
                                lineBarsData: [
                                  LineChartBarData(
                                    color: selectionColor,
                                    barWidth: 2.5,
                                    belowBarData: BarAreaData(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          selectionColor.withOpacity(0.5),
                                          Colors.transparent
                                        ],
                                      ),
                                      show: true,
                                    ),
                                    dotData: const FlDotData(show: false),
                                    spots: data.spots,
                                  )
                                ],
                                minX: 0,
                                maxX: 120,
                                maxY: 105,
                                minY: -5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Chart Kelembaban

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 200,
                      width: 350,
                      child: CustomCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Kelembaban tanah",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                color: Color(0xFF3B614A),
                              ),
                            ),
                            const SizedBox(height: 20),
                            AspectRatio(
                              aspectRatio: 16 / 6,
                              child: LineChart(
                                LineChartData(
                                  lineTouchData: const LineTouchData(
                                    handleBuiltInTouches: true,
                                  ),
                                  gridData: const FlGridData(show: false),
                                  titlesData: FlTitlesData(
                                    rightTitles: const AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: const AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          return data.bottomTitleKelembaban[
                                                      value.toInt()] !=
                                                  null
                                              ? SideTitleWidget(
                                                  axisSide: meta.axisSide,
                                                  child: Text(
                                                    data.bottomTitleKelembaban[
                                                            value.toInt()]
                                                        .toString(),
                                                    style: const TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xFF3B614A),
                                                    ),
                                                  ),
                                                )
                                              : const SizedBox();
                                        },
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          return data.leftTitleKelembaban[
                                                      value.toInt()] !=
                                                  null
                                              ? Text(
                                                  data.leftTitleKelembaban[
                                                          value.toInt()]
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF3B614A),
                                                  ),
                                                )
                                              : const SizedBox();
                                        },
                                        showTitles: true,
                                        interval: 1,
                                        reservedSize: 40,
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(show: false),
                                  lineBarsData: [
                                    LineChartBarData(
                                      color: selectionColor,
                                      barWidth: 2.5,
                                      belowBarData: BarAreaData(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            selectionColor.withOpacity(0.5),
                                            Colors.transparent
                                          ],
                                        ),
                                        show: true,
                                      ),
                                      dotData: const FlDotData(show: false),
                                      spots: data.spots,
                                    )
                                  ],
                                  minX: 0,
                                  maxX: 120,
                                  maxY: 105,
                                  minY: -5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Chart debit air

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 200,
                      width: 350,
                      child: CustomCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Debit air",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins',
                                color: Color(0xFF3B614A),
                              ),
                            ),
                            const SizedBox(height: 20),
                            AspectRatio(
                              aspectRatio: 16 / 6,
                              child: LineChart(
                                LineChartData(
                                  lineTouchData: const LineTouchData(
                                    handleBuiltInTouches: true,
                                  ),
                                  gridData: const FlGridData(show: false),
                                  titlesData: FlTitlesData(
                                    rightTitles: const AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: const AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          return data.bottomTitleAir[
                                                      value.toInt()] !=
                                                  null
                                              ? SideTitleWidget(
                                                  axisSide: meta.axisSide,
                                                  child: Text(
                                                    data.bottomTitleAir[
                                                            value.toInt()]
                                                        .toString(),
                                                    style: const TextStyle(
                                                      fontSize: 10,
                                                      color: Color(0xFF3B614A),
                                                    ),
                                                  ),
                                                )
                                              : const SizedBox();
                                        },
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          return data.leftTitleAir[
                                                      value.toInt()] !=
                                                  null
                                              ? Text(
                                                  data.leftTitleAir[
                                                          value.toInt()]
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontSize: 10,
                                                    color: Color(0xFF3B614A),
                                                  ),
                                                )
                                              : const SizedBox();
                                        },
                                        showTitles: true,
                                        interval: 1,
                                        reservedSize: 40,
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(show: false),
                                  lineBarsData: [
                                    LineChartBarData(
                                      color: selectionColor,
                                      barWidth: 2.5,
                                      belowBarData: BarAreaData(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            selectionColor.withOpacity(0.5),
                                            Colors.transparent
                                          ],
                                        ),
                                        show: true,
                                      ),
                                      dotData: const FlDotData(show: false),
                                      spots: data.spots,
                                    )
                                  ],
                                  minX: 0,
                                  maxX: 120,
                                  maxY: 105,
                                  minY: -5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        // Handle control logic here
                      },
                      child: Container(
                        height: 50,
                        width: 900,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(10.0), // Add this line
                          gradient: const LinearGradient(
                            colors: [Color(0xFF3B614A), Color(0xFF123456)],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Kontrol Debit Air',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xffE7E8E3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Titles {
  static getTitleData() => const FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 35,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
          ),
        ),
      );
}

// CUSTOM CARD

class CustomCard extends StatelessWidget {
  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const CustomCard({super.key, this.color, this.padding, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          color: color ?? cardBackgroundColor,
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(20.0),
          child: child,
        ));
  }
}

// DATA FOR LINE CHART

class LineData {
  final spots = const [
    FlSpot(1.68, 21.04),
    FlSpot(2.84, 26.23),
    FlSpot(5.19, 19.82),
    FlSpot(6.01, 24.49),
    FlSpot(7.81, 19.82),
    FlSpot(9.49, 23.50),
    FlSpot(12.26, 19.57),
    FlSpot(15.63, 20.90),
    FlSpot(20.39, 39.20),
    FlSpot(23.69, 75.62),
    FlSpot(26.21, 46.58),
    FlSpot(29.87, 42.97),
    FlSpot(32.49, 46.54),
    FlSpot(35.09, 40.72),
    FlSpot(38.74, 43.18),
    FlSpot(41.47, 59.91),
    FlSpot(43.12, 53.18),
    FlSpot(46.30, 90.10),
    FlSpot(47.88, 81.59),
    FlSpot(51.71, 75.53),
    FlSpot(54.21, 78.95),
    FlSpot(55.23, 86.94),
    FlSpot(57.40, 78.98),
    FlSpot(60.49, 74.38),
    FlSpot(64.30, 48.34),
    FlSpot(67.17, 70.74),
    FlSpot(70.35, 75.43),
    FlSpot(73.39, 69.88),
    FlSpot(75.87, 80.04),
    FlSpot(77.32, 74.38),
    FlSpot(81.43, 68.43),
    FlSpot(86.12, 69.45),
    FlSpot(90.06, 78.60),
    FlSpot(94.68, 46.05),
    FlSpot(98.35, 42.80),
    FlSpot(101.25, 53.05),
    FlSpot(103.07, 46.06),
    FlSpot(106.65, 42.31),
    FlSpot(108.20, 32.64),
    FlSpot(110.40, 45.14),
    FlSpot(114.24, 53.27),
    FlSpot(116.60, 42.13),
    FlSpot(118.52, 57.60),
  ];

// DATA SUHU RUANGAN

  final leftTitleSuhu = {
    0: '0°C',
    20: '20°C',
    40: '40°C',
    60: '60°C',
    80: '80°C',
    100: '100°C'
  };

  final bottomTitleSuhu = {
    0: '00:00',
    10: '01:00',
    20: '02:00',
    30: '03:00',
    40: '04:00',
    50: '05:00',
    60: '06:00',
    70: '07:00',
    80: '08:00',
    90: '09:00',
    100: '10:00',
    110: '11:00',
    120: '12:00',
    130: '13:00',
    140: '14:00',
    150: '15:00',
    160: '16:00',
    170: '17:00',
    180: '18:00',
    190: '19:00',
    200: '20:00',
    210: '21:00',
    220: '22:00',
    230: '23:00',
    240: '24:00',
  };

  // KELEMBABAN TANAH

  final leftTitleKelembaban = {
    0: '0%',
    20: '20%',
    40: '40%',
    60: '60%',
    80: '80%',
    100: '100%'
  };

  final bottomTitleKelembaban = {
    0: '00:00',
    10: '01:00',
    20: '02:00',
    30: '03:00',
    40: '04:00',
    50: '05:00',
    60: '06:00',
    70: '07:00',
    80: '08:00',
    90: '09:00',
    100: '10:00',
    110: '11:00',
    120: '12:00',
    130: '13:00',
    140: '14:00',
    150: '15:00',
    160: '16:00',
    170: '17:00',
    180: '18:00',
    190: '19:00',
    200: '20:00',
    210: '21:00',
    220: '22:00',
    230: '23:00',
    240: '24:00',
  };
  // KELEMBABAN TANAH

  final leftTitleAir = {
    0: '0ml',
    20: '200ml',
    40: '400ml',
    60: '600ml',
    80: '800ml',
    100: '1000ml'
  };

  final bottomTitleAir = {
    0: '00:00',
    10: '01:00',
    20: '02:00',
    30: '03:00',
    40: '04:00',
    50: '05:00',
    60: '06:00',
    70: '07:00',
    80: '08:00',
    90: '09:00',
    100: '10:00',
    110: '11:00',
    120: '12:00',
    130: '13:00',
    140: '14:00',
    150: '15:00',
    160: '16:00',
    170: '17:00',
    180: '18:00',
    190: '19:00',
    200: '20:00',
    210: '21:00',
    220: '22:00',
    230: '23:00',
    240: '24:00',
  };
}
