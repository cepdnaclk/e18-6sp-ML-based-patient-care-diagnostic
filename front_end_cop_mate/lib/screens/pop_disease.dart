import 'package:flutter/material.dart';
import 'package:front_end_cop_mate/models/Diagnosis.dart';

class pop_disease extends StatefulWidget {
  static const String id = 'pop_disease';
  final Diagnosis diagnosis;

  const pop_disease({
    required this.diagnosis,
  });

  @override
  State<pop_disease> createState() => _pop_diseaseState();
}

class _pop_diseaseState extends State<pop_disease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Diagnosis'),
        leading: null,
        backgroundColor: Color(0xFFAC6EBB),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            width: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFe69cc9),
                  Colors.white,
                ],
              ),
            ),
            padding: EdgeInsets.all(10.0),
            child: Container(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(3.0),
                height: 200,
                width: 1000,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xFFffbfe7)),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                      'Predicted Diagnosis:  ' +
                                          widget.diagnosis.disease +
                                          "\n",
                                      style: TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                      'Cure:  ' + widget.diagnosis.cure + "\n",
                                      style: TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                      'Doctor:  ' +
                                          widget.diagnosis.doctor +
                                          "\n",
                                      style: TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                      'Risk Level:  ' +
                                          widget.diagnosis.riskFactor +
                                          "\n",
                                      style: TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
