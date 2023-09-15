import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_end_cop_mate/elements/heading.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:front_end_cop_mate/models/Vehicle.dart';
import 'package:front_end_cop_mate/screens/register_vehicle.dart';
import 'package:front_end_cop_mate/screens/heart.dart';
import 'package:front_end_cop_mate/screens/lung_cancer.dart';
import 'package:front_end_cop_mate/screens/diabetes.dart';
import 'package:front_end_cop_mate/screens/brain_stroke.dart';
import 'package:front_end_cop_mate/models/User_2.dart';

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
  //late List<ChartData> _chartData;

  @override
  void initState() {
    //_chartData = getChartDataFirst();
    super.initState();
    //getChartDataSecond();
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
                height: 0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: SizedBox.fromSize(
                          size: const Size.fromRadius(144),
                          child: Image.asset("images/home_page.png")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, heart.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Icon(
                                FontAwesomeIcons.heartPulse,
                                size: 100.0,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   Heart\nDiseases",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFFFFFFFF)),
                            minimumSize:
                                MaterialStatePropertyAll<Size>(Size(150, 175)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, lung_cancer.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.lungs,
                                    size: 75.0,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "   Lung\nCancer",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFFFFFFFF)),
                            minimumSize:
                                MaterialStatePropertyAll<Size>(Size(150, 175)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, diabetes.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Icon(
                                FontAwesomeIcons.candyCane,
                                size: 100.0,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "   Diabetes",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFFFFFFFF)),
                            minimumSize:
                                MaterialStatePropertyAll<Size>(Size(150, 175)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, brain_stroke.id);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.brain,
                                    size: 75.0,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                " Brain\nStroke",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              SizedBox(
                                height: 0,
                              ),
                            ],
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Color(0xFFFFFFFF)),
                            minimumSize:
                                MaterialStatePropertyAll<Size>(Size(150, 175)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  // List<ChartData> getChartDataFirst() {
  //   var now = DateTime.now();
  //
  //   final List<ChartData> chartData = [
  //     ChartData(DateTime(now.year, now.month, now.day, 2), 0, 0, 0),
  //     ChartData(DateTime(now.year, now.month, now.day, 6), 0, 0, 0),
  //     ChartData(DateTime(now.year, now.month, now.day, 10), 0, 0, 0),
  //     ChartData(DateTime(now.year, now.month, now.day, 14), 0, 0, 0),
  //     ChartData(DateTime(now.year, now.month, now.day, 18), 0, 0, 0),
  //     ChartData(DateTime(now.year, now.month, now.day, 22), 0, 0, 0),
  //   ];
  //   return chartData;
  // }

  // void getChartDataSecond() async {
  //   var now = new DateTime.now();
  //   var formatter = new DateFormat('yyyy-MM-dd');
  //   String formattedDate = formatter.format(now);
  //
  //   String urlbreakings =
  //       "https://us-central1-cop-mate.cloudfunctions.net/getFrequency?date=" +
  //           formattedDate;
  //   final List<ChartData> chartData;
  //   final response = await http.get(Uri.parse(urlbreakings));
  //   if (response.statusCode == 200) {
  //     var decodeData = jsonDecode(response.body);
  //     chartData = [
  //       ChartData(
  //         DateTime(now.year, now.month, now.day, 2),
  //         decodeData[0]['dash'] + .0,
  //         decodeData[0]['single'] + .0,
  //         decodeData[0]['double'] + .0,
  //       ),
  //       ChartData(
  //         DateTime(now.year, now.month, now.day, 6),
  //         decodeData[1]['dash'] + .0,
  //         decodeData[1]['single'] + .0,
  //         decodeData[1]['double'] + .0,
  //       ),
  //       ChartData(
  //         DateTime(now.year, now.month, now.day, 10),
  //         decodeData[2]['dash'] + .0,
  //         decodeData[2]['single'] + .0,
  //         decodeData[2]['double'] + .0,
  //       ),
  //       ChartData(
  //         DateTime(now.year, now.month, now.day, 14),
  //         decodeData[3]['dash'] + .0,
  //         decodeData[3]['single'] + .0,
  //         decodeData[3]['double'] + .0,
  //       ),
  //       ChartData(
  //         DateTime(now.year, now.month, now.day, 18),
  //         decodeData[4]['dash'] + .0,
  //         decodeData[4]['single'] + .0,
  //         decodeData[4]['double'] + .0,
  //       ),
  //       ChartData(
  //         DateTime(now.year, now.month, now.day, 22),
  //         decodeData[5]['dash'] + .0,
  //         decodeData[5]['single'] + .0,
  //         decodeData[5]['double'] + .0,
  //       ),
  //     ];
  //
  //     _chartData = chartData;
  //     setState(() {
  //       print("Set");
  //     });
  //   }
  // }
}

// class ChartData {
//   ChartData(this.date, this.singleLine, this.doubleLine, this.crossingLine);
//
//   final DateTime date;
//   final double singleLine;
//   final double doubleLine;
//   final double crossingLine;
// }
