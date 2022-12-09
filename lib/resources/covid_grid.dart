import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../model/covid_19.dart';

class CovidGridSource extends DataGridSource {
  CovidGridSource({required List<COVID19> covid19}) {
    dataGridRows = covid19
        .map(
          (covid19GridRow) => DataGridRow(
            cells: [
              DataGridCell<DateTime>(
                  columnName: 'Date', value: covid19GridRow.date),
              DataGridCell<int>(
                  columnName: 'Positive', value: covid19GridRow.positive),
              DataGridCell<int>(
                  columnName: 'Negative', value: covid19GridRow.negative),
              DataGridCell<int>(
                  columnName: 'Action', value: covid19GridRow.negative),
              DataGridCell<int>(
                  columnName: 'Hospitalized',
                  value: covid19GridRow.hospitalized),
              DataGridCell<int>(
                  columnName: 'Recovered', value: covid19GridRow.recovered),
            ],
          ),
        )
        .toList();
  }

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((dataGridCell) {
        // if (dataGridCell.columnName == 'Action') {
        //   return IconButton(
        //       onPressed: () {
        //         print(dataGridCell);
        //       },
        //       icon: Icon(Icons.show_chart));
        // }
        return Text(dataGridCell.value.toString());
      }).toList(),
    );
  }
}
