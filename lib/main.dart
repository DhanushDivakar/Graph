import 'package:chart/bloc/bloc/covid_bloc.dart';
import 'package:chart/resources/covid_grid.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  late CovidGridSource _covidGridSource;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CovidBloc()..add(GetCovidData()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyHome extends StatelessWidget {
  MyHome({super.key});

  CovidGridSource? _covidGridSource;
  @override
  Widget build(BuildContext context) {
    print(_covidGridSource);
    return SfDataGrid(source: _covidGridSource!, columns: [
      GridColumn(
          columnName: 'Date',
          label: Container(
            child: const Text('Date'),
          ))
    ]);
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chart'),
        ),
        body: BlocBuilder<CovidBloc, CovidState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.covidData.isNotEmpty) {
              final covid19Data = state.covidData;
              return SfDataGrid(
                  source: CovidGridSource(covid19: covid19Data),
                  columns: [
                    GridColumn(
                      columnName: 'Date',
                      label: const Text('Date'),
                    ),
                    GridColumn(
                      columnName: 'Positive',
                      label: const Text('Positive'),
                    ),
                    GridColumn(
                      columnName: 'Negative',
                      label: const Text('Negative'),
                    ),
                    GridColumn(columnName: 'Action', label: const Text('Action'))
                  ]);

              // return SingleChildScrollView(
              //   child: SizedBox(
              //     height: MediaQuery.of(context).size.height,
              //     child: Column(
              //       children: [
              //         const Padding(
              //           padding: EdgeInsets.all(10),
              //           child: Text(
              //             'Date vs Death',
              //             style: TextStyle(fontSize: 20),
              //           ),
              //         ),
              //         Expanded(
              //           child: LineChart(
              //             LineChartData(
              //               lineBarsData: [
              //                 LineChartBarData(
              //                   spots: covid19Data.map((point) {
              //                     final x = (point.date
              //                             ?.difference(DateTime.now())
              //                             .inDays
              //                             .toDouble() ??
              //                         0.0);
              //                     final y = point.death?.toDouble() ?? 0.0;
              //                     return FlSpot(x, y);
              //                   }).toList(),
              //                   isCurved: true,
              //                   dotData: FlDotData(show: true),
              //                 )
              //               ],
              //             ),
              //           ),
              //         ),
              //         const Padding(
              //           padding: EdgeInsets.all(10),
              //           child: Text(
              //             'Date vs Positive',
              //             style: TextStyle(fontSize: 20),
              //           ),
              //         ),
              //         Expanded(
              //           child: Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: LineChart(
              //               LineChartData(
              //                 titlesData: FlTitlesData(
              //                   topTitles: AxisTitles(
              //                     sideTitles: SideTitles(showTitles: false),
              //                   ),
              //                   rightTitles: AxisTitles(
              //                     sideTitles: SideTitles(showTitles: false),
              //                   ),
              //                 ),
              //                 gridData: FlGridData(show: false),
              //                 lineBarsData: [
              //                   LineChartBarData(
              //                     spots: covid19Data
              //                         .map(
              //                           (point) => FlSpot(
              //                               (point.date?.microsecondsSinceEpoch
              //                                       .toDouble()) ??
              //                                   0.0,
              //                               point.positive?.toDouble() ?? 0.0),
              //                         )
              //                         .toList(),
              //                     isCurved: true,
              //                     dotData: FlDotData(show: true),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // );

              // return ListView.builder(
              //   itemCount: covid19Data.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return AspectRatio(
              //       aspectRatio: 2,
              //       child: LineChart(
              //         LineChartData(
              //           lineBarsData: [
              //             LineChartBarData(
              //                 spots: covid19Data
              //                     .map((point) => FlSpot(
              //                         point.death?.toDouble() ?? 0.0,
              //                         point.death?.toDouble() ?? 0.0))
              //                     .toList(),
              //                 isCurved: true,
              //                 dotData: FlDotData(show: true))
              //           ],
              //         ),
              //       ),
              //     );
              //     // return Column(
              //     //   children: [
              //     //     Text('${covid19Data[index].death}'),
              //     //      Text('${covid19Data[index].date}'),
              //     //   ],
              //     // );
              //   },
              // );

            }

            return Center(
              child: TextButton.icon(
                  onPressed: () {
                    context.read<CovidBloc>().add(GetCovidData());
                  },
                  icon: const Icon(Icons.refresh),
                  label: const Text('Refresh')),
            );
          },
        )

        // LineChartWidget(pricePoints),
        );
  }
}
