import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_end_cop_mate/elements/heading.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:front_end_cop_mate/models/Vehicle.dart';

void main() {
  return runApp(_ChartApp());
}

class _ChartApp extends StatefulWidget {

  @override
  State<_ChartApp> createState() => _ChartAppState();
}

class _ChartAppState extends State<_ChartApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: day_summary_graph(),
    );
  }
}

class day_summary_graph extends StatefulWidget {
  day_summary_graph({Key? key}) : super(key: key);
  static const String id = 'day_summary_graph';
  @override
  _day_summary_graphState createState() => _day_summary_graphState();
}

class _day_summary_graphState extends State<day_summary_graph> {
  late List<ChartData> _chartData;

  @override
  void initState() {
    _chartData = getChartDataFirst();
    super.initState();
    getChartDataSecond();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF8008CA),
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              heading(
                  string: "Tom Hanks",
                  icon: FontAwesomeIcons.heartPulse,
                  space: 20),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 600,
                      width: 400,
                      child: Column(children: [
                        const Image(image: AssetImage('images/home_page.png'),
                        )
                      ,Row(
                          children: [],
                        )],)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ChartData> getChartDataFirst() {
    var now = DateTime.now();

    final List<ChartData> chartData = [
      ChartData(DateTime(now.year, now.month, now.day, 2), 0, 0, 0),
      ChartData(DateTime(now.year, now.month, now.day, 6), 0, 0, 0),
      ChartData(DateTime(now.year, now.month, now.day, 10), 0, 0, 0),
      ChartData(DateTime(now.year, now.month, now.day, 14), 0, 0, 0),
      ChartData(DateTime(now.year, now.month, now.day, 18), 0, 0, 0),
      ChartData(DateTime(now.year, now.month, now.day, 22), 0, 0, 0),
    ];
    return chartData;
  }

  void getChartDataSecond() async {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);

    String urlbreakings =
        "https://us-central1-cop-mate.cloudfunctions.net/getFrequency?date=" +
            formattedDate;
    final List<ChartData> chartData;
    final response = await http.get(Uri.parse(urlbreakings));
    if (response.statusCode == 200) {
      var decodeData = jsonDecode(response.body);
      chartData = [
        ChartData(
          DateTime(now.year, now.month, now.day, 2),
          decodeData[0]['dash'] + .0,
          decodeData[0]['single'] + .0,
          decodeData[0]['double'] + .0,
        ),
        ChartData(
          DateTime(now.year, now.month, now.day, 6),
          decodeData[1]['dash'] + .0,
          decodeData[1]['single'] + .0,
          decodeData[1]['double'] + .0,
        ),
        ChartData(
          DateTime(now.year, now.month, now.day, 10),
          decodeData[2]['dash'] + .0,
          decodeData[2]['single'] + .0,
          decodeData[2]['double'] + .0,
        ),
        ChartData(
          DateTime(now.year, now.month, now.day, 14),
          decodeData[3]['dash'] + .0,
          decodeData[3]['single'] + .0,
          decodeData[3]['double'] + .0,
        ),
        ChartData(
          DateTime(now.year, now.month, now.day, 18),
          decodeData[4]['dash'] + .0,
          decodeData[4]['single'] + .0,
          decodeData[4]['double'] + .0,
        ),
        ChartData(
          DateTime(now.year, now.month, now.day, 22),
          decodeData[5]['dash'] + .0,
          decodeData[5]['single'] + .0,
          decodeData[5]['double'] + .0,
        ),
      ];

      _chartData = chartData;
      setState(() {
        print("Set");
      });
    }
  }
}

class ChartData {
  ChartData(this.date, this.singleLine, this.doubleLine, this.crossingLine);
  final DateTime date;
  final double singleLine;
  final double doubleLine;
  final double crossingLine;
}
