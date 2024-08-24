import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridExample extends StatelessWidget {
  final List<PlutoColumn> columns = [
    PlutoColumn(
      title: 'Column 1',
      field: 'column1',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Column 2',
      field: 'column2',
      type: PlutoColumnType.text(),
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'column1': PlutoCell(value: 'Row 1, Column 1'),
        'column2': PlutoCell(value: 'Row 1, Column 2'),
      },
    ),
    PlutoRow(
      cells: {
        'column1': PlutoCell(value: 'Row 2, Column 1'),
        'column2': PlutoCell(value: 'Row 2, Column 2'),
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pluto Grid Example'),
      ),
      body: PlutoGrid(
        columns: columns,
        rows: rows,
        onLoaded: (PlutoGridOnLoadedEvent event) {},
        onChanged: (PlutoGridOnChangedEvent event) {},
      ),
    );
  }
}
