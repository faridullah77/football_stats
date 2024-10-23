import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Stats',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Premier League Points Table'), // Updated title
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('Team')),
            DataColumn(label: Text('Played')),
            DataColumn(label: Text('Won')),
            DataColumn(label: Text('Drawn')),
            DataColumn(label: Text('Lost')),
            DataColumn(label: Text('Points')),
          ],
          rows: const <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('Arsenal')),
              DataCell(Text('10')),
              DataCell(Text('8')),
              DataCell(Text('1')),
              DataCell(Text('1')),
              DataCell(Text('25')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Manchester City')),
              DataCell(Text('10')),
              DataCell(Text('7')),
              DataCell(Text('2')),
              DataCell(Text('1')),
              DataCell(Text('23')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Liverpool')),
              DataCell(Text('10')),
              DataCell(Text('6')),
              DataCell(Text('3')),
              DataCell(Text('1')),
              DataCell(Text('21')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Chelsea')),
              DataCell(Text('10')),
              DataCell(Text('5')),
              DataCell(Text('4')),
              DataCell(Text('1')),
              DataCell(Text('19')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Manchester United')),
              DataCell(Text('10')),
              DataCell(Text('4')),
              DataCell(Text('3')),
              DataCell(Text('3')),
              DataCell(Text('15')),
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Tottenham Hotspur')),
              DataCell(Text('10')),
              DataCell(Text('4')),
              DataCell(Text('2')),
              DataCell(Text('4')),
              DataCell(Text('14')),
            ]),
            // Add more teams as needed
          ],
        ),
      ),
    );
  }
}
