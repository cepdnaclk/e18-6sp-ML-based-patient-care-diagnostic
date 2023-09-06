import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:front_end_cop_mate/elements/heading.dart';

class lung_cancer extends StatefulWidget {
  const lung_cancer({super.key});
  static const String id = 'lung_cancer';
  @override
  State<lung_cancer> createState() => _lung_cancerState();
}

class _lung_cancerState extends State<lung_cancer> {
  String Age = "";
  String Gender = "";
  String Alcohol_use = "";
  String Air_Pollution = "";
  String Dust_Allergy = "";
  String OccuPational_Hazards = "";
  String Genetic_Risk = "";
  String chronic_Lung_Disease = "";
  String Balanced_Diet = "";
  String Obesity = "";
  String Smoking = "";
  String Passive_Smoker = "";
  String Chest_Pain = "";

  String Coughing_of_Blood = "";
  String Fatigue = "";
  String Weight_Loss = "";
  String Shortness_of_Breath = "";
  String Wheezing = "";
  String Swallowing_Difficulty = "";
  String Clubbing_of_Finger_Nails = "";
  String Frequent_Cold = "";
  String Dry_Cough = "";
  String Snoring = "";
  bool showSpinner = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildage() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter age';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          Age = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Age",
        icon: Icon(
          FontAwesomeIcons.child,
          color: Colors.black,
        ),
        hintText: "Age",
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    );
  }

  Widget _buildgender() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 60,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text("Gender:", style: TextStyle(fontSize: 15)),
          SizedBox(
            width: 20,
          ),
          ToggleSwitch(
              minWidth: 70.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.pink[800]!],
                [Colors.purple[800]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 2,
              labels: ['Male', 'Female'],
              radiusStyle: true,
              onToggle: (index) {
                Gender = index.toString();
              }),
        ],
      ),
    );
  }

  double shapePointerValue1 = 85;
  double barPointerValue1 = 85;
  double widgetPointerValue1 = 5;
  double widgetPointerValue2 = 5;
  double widgetPointerValue3 = 5;
  double widgetPointerValue4 = 5;
  double widgetPointerValue5 = 5;
  double widgetPointerValue6 = 5;
  double widgetPointerValue7 = 5;
  double widgetPointerValue8 = 5;
  double widgetPointerValue9 = 5;
  double widgetPointerValue10 = 5;
  double widgetPointerValue11 = 5;
  double widgetPointerValue12 = 5;
  double widgetPointerValue13 = 5;
  double widgetPointerValue14 = 5;
  double widgetPointerValue15 = 5;
  double widgetPointerValue16 = 5;
  double widgetPointerValue17 = 5;
  double widgetPointerValue18 = 5;
  double widgetPointerValue19 = 5;
  double widgetPointerValue20 = 5;
  double widgetPointerValue21 = 5;

  Widget _buildAir_Pollution() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nHow polluted is the air in the area you live in?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue1,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue1 = value;
                    Air_Pollution = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue1,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue1 = value;
                    Air_Pollution = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue1.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue1,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAlcohol_use() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nHow much alcohol do you intake daily?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue2,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue2 = value;
                    Alcohol_use = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue2,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue2 = value;
                    Alcohol_use = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue2.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue2,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDust_Allergy() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nAre you allergic to dust?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue3,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue3 = value;
                    Dust_Allergy = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue3,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue3 = value;
                    Dust_Allergy = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue3.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue3,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildOccuPational_Hazards() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nWere you exposed to any effects from occupational hazards?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue4,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue4 = value;
                    OccuPational_Hazards = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue4,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue4 = value;
                    OccuPational_Hazards = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue4.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue4,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGenetic_Risk() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nDoes your family have a history of being prone to Lung Cancer?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue5,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue5 = value;
                    Genetic_Risk = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue5,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue5 = value;
                    Genetic_Risk = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue5.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue5,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildchronic_Lung_Disease() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nDoes your family have a history of being prone to Lung Cancer?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue6,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue6 = value;
                    chronic_Lung_Disease = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue6,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue6 = value;
                    chronic_Lung_Disease = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue6.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue6,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanced_Diet() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nDo you maintain a well balanced diet?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue7,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue7 = value;
                    Balanced_Diet = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue7,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue7 = value;
                    Balanced_Diet = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue7.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue7,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildObesity() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nAre you prone to Obesity?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue8,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue8 = value;
                    Obesity = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue8,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue8 = value;
                    Obesity = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue8.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue8,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSmoking() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nHow much do you smoke?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue9,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue9 = value;
                    Smoking = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue9,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue9 = value;
                    Smoking = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue9.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue9,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPassive_Smoker() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nHow much smoke do intake passivley?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue10,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue10 = value;
                    Passive_Smoker = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue10,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue10 = value;
                    Passive_Smoker = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue10.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue10,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChest_Pain() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nAre you prone to chest pains?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue11,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue11 = value;
                    Chest_Pain = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue11,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue11 = value;
                    Chest_Pain = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue11.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue11,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCoughing_of_Blood() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nDo you cough blood?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue12,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue12 = value;
                    Coughing_of_Blood = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue12,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue12 = value;
                    Coughing_of_Blood = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue12.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue12,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFatigue() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nHow would you rate how quickly you get fatigue?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue13,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue13 = value;
                    Fatigue = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue13,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue13 = value;
                    Fatigue = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue13.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue13,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWeight_Loss() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nDo you loose weight Quickly?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue14,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue14 = value;
                    Weight_Loss = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue14,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue14 = value;
                    Weight_Loss = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue14.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue14,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildShortness_of_Breath() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nDo you run out of breath quickly?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue15,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue15 = value;
                    Shortness_of_Breath = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue15,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue15 = value;
                    Shortness_of_Breath = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue15.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue15,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWheezing() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nAre you prone to wheezing?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue16,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue16 = value;
                    Wheezing = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue16,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue16 = value;
                    Wheezing = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue16.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue16,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSwallowing_Difficulty() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nDo you have clubbing on your fingernails?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue17,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue17 = value;
                    Clubbing_of_Finger_Nails = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue17,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue17 = value;
                    Clubbing_of_Finger_Nails = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue17.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue17,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildClubbing_of_Fingernails() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
              "On a scale of 0 to 10:\nDo you have clubbing on your fingernails?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue18,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue18 = value;
                    Clubbing_of_Finger_Nails = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue18,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue18 = value;
                    Clubbing_of_Finger_Nails = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue18.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue18,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFrequent_Cold() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nDo you get cold frequently?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue19,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue19 = value;
                    Frequent_Cold = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue19,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue19 = value;
                    Frequent_Cold = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue19.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue19,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDry_Cough() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nDo you have a Dry Cough?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue20,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue20 = value;
                    Dry_Cough = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue20,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue20 = value;
                    Dry_Cough = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue20.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue20,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSnoring() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 150,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text("On a scale of 0 to 10:\nHow much do you snore?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue21,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue21 = value;
                    Snoring = value.toString();
                  });
                },
                // color: widgetPointerValue < 40
                //     ? Colors.green
                //     : widgetPointerValue < 80
                //         ? Colors.orange
                //         : Colors.red
              ),
              LinearWidgetPointer(
                value: widgetPointerValue21,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue21 = value;
                    Snoring = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue21.toStringAsFixed(0),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        // color: widgetPointerValue < 40
                        //     ? Colors.green
                        //     : widgetPointerValue < 80
                        //         ? Colors.orange
                        //         : Colors.red
                      ),
                    ),
                  ),
                ),
                position: LinearElementPosition.outside,
              ),
            ],
            ranges: [
              LinearGaugeRange(
                  endValue: widgetPointerValue21,
                  // color: widgetPointerValue < 40
                  //     ? Colors.green
                  //     : widgetPointerValue < 80
                  //         ? Colors.orange
                  //         : Colors.red,
                  position: LinearElementPosition.cross)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Lung Cancer Prediction'),
        backgroundColor: Color(0xFF518BB8),
      ),
      body: SingleChildScrollView(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SafeArea(
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
                  SizedBox(
                    height: 10,
                  ),
                  heading(
                      string: "Enter Parameters",
                      icon: FontAwesomeIcons.ruler,
                      space: 40),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[
                          _buildage(),
                          SizedBox(height: 20),
                          _buildgender(),
                          SizedBox(height: 20),
                          _buildAir_Pollution(),
                          SizedBox(height: 20),
                          _buildAlcohol_use(),
                          SizedBox(height: 20),
                          _buildDust_Allergy(),
                          SizedBox(height: 20),
                          _buildOccuPational_Hazards(),
                          SizedBox(height: 20),
                          _buildGenetic_Risk(),
                          SizedBox(height: 20),
                          _buildchronic_Lung_Disease(),
                          SizedBox(height: 20),
                          _buildBalanced_Diet(),
                          SizedBox(height: 20),
                          _buildObesity(),
                          SizedBox(height: 20),
                          _buildSmoking(),
                          SizedBox(height: 20),
                          _buildPassive_Smoker(),
                          SizedBox(height: 20),
                          _buildChest_Pain(),
                          SizedBox(height: 20),
                          _buildCoughing_of_Blood(),
                          SizedBox(height: 20),
                          _buildDry_Cough(),
                          SizedBox(height: 20),
                          _buildFatigue(),
                          SizedBox(height: 20),
                          _buildWeight_Loss(),
                          SizedBox(height: 20),
                          _buildShortness_of_Breath(),
                          SizedBox(height: 20),
                          _buildWheezing(),
                          SizedBox(height: 20),
                          _buildSwallowing_Difficulty(),
                          SizedBox(height: 20),
                          _buildClubbing_of_Fingernails(),
                          SizedBox(height: 20),
                          _buildFrequent_Cold(),
                          SizedBox(height: 20),
                          _buildDry_Cough(),
                          SizedBox(height: 20),
                          _buildSnoring(),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () async {
                              // if (!_formkey.currentState!.validate()) {
                              //   return;
                              // }
                              // _formkey.currentState!.save();
                              //
                              // final response = await http.post(
                              //   Uri.parse(
                              //       'https://ml-model-api14.onrender.com/heart_disease'),
                              //   body: jsonEncode({
                              //     "age": age,
                              //     "anaemia": anaemia,
                              //     "creatinine_phosphokinase":
                              //         creatinine_phosphokinase,
                              //     "diabetes": diabetes,
                              //     "ejection_fraction": ejection_fraction,
                              //     "high_blood_pressure": high_blood_pressure,
                              //     "platelets": platelets,
                              //     "serum_creatinine": serum_creatinine,
                              //     "serum_sodium": serum_sodium,
                              //     "sex": sex,
                              //     "smoking": smoking,
                              //     "time": time
                              //   }),
                              // );
                              // print(response.statusCode);
                              // if (response.statusCode == 200) {
                              //   dynamic resp = jsonDecode(response.body);
                              //   print(resp);
                              //   showDialog<void>(
                              //     context: context,
                              //     barrierDismissible:
                              //         false, // user must tap button!
                              //     builder: (BuildContext context) {
                              //       return AlertDialog(
                              //         title: const Text('Successful!'),
                              //         content: SingleChildScrollView(
                              //           child: ListBody(
                              //             children: const <Widget>[
                              //               Text('prediction'),
                              //             ],
                              //           ),
                              //         ),
                              //         actions: <Widget>[
                              //           TextButton(
                              //             child: const Text('Okay'),
                              //             onPressed: () {
                              //               Navigator.pushAndRemoveUntil(
                              //                   context,
                              //                   MaterialPageRoute(
                              //                       builder: (context) =>
                              //                           bottomnavigationbar()),
                              //                   (r) => false);
                              //             },
                              //           ),
                              //         ],
                              //       );
                              //     },
                              //   );
                              // } else {
                              //   showDialog<void>(
                              //     context: context,
                              //     barrierDismissible:
                              //         false, // user must tap button!
                              //     builder: (BuildContext context) {
                              //       return AlertDialog(
                              //         title: const Text('Unsuccessful'),
                              //         content: SingleChildScrollView(
                              //           child: ListBody(
                              //             children: const <Widget>[
                              //               Text('Please try again!'),
                              //             ],
                              //           ),
                              //         ),
                              //         actions: <Widget>[
                              //           TextButton(
                              //             child: const Text('Okay'),
                              //             onPressed: () {
                              //               Navigator.of(context).pop();
                              //             },
                              //           ),
                              //         ],
                              //       );
                              //     },
                              //   );
                              // }
                            },
                            child: Text("Predict",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color(0xFFAC6EBB)),
                                minimumSize: MaterialStatePropertyAll<Size>(
                                    Size(100, 40))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
