
import 'package:chart/model/date_vs_death.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DateVSDeathWidget extends StatelessWidget {
  final List<DateVSDeath> deaths;
  const DateVSDeathWidget({super.key, required this.deaths});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
      )
    );
  }
}