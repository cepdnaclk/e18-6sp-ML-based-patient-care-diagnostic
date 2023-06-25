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

  double shapePointerValue = 85;
  double barPointerValue = 85;
  double widgetPointerValue = 5;

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
              "In a scale of 0 to 1:\nDo you live in an area with high air pollution?"),
          SfLinearGauge(
            axisTrackStyle: LinearAxisTrackStyle(thickness: 10),
            maximum: 10,
            minimum: 0,
            markerPointers: [
              LinearShapePointer(
                value: widgetPointerValue,
                shapeType: LinearShapePointerType.invertedTriangle,
                position: LinearElementPosition.cross,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue = value;
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
                value: widgetPointerValue,
                onChanged: (value) {
                  setState(() {
                    widgetPointerValue = value;
                    Air_Pollution = value.toString();
                  });
                },
                child: Container(
                  width: 55,
                  height: 45,
                  child: Center(
                    child: Text(
                      widgetPointerValue.toStringAsFixed(0),
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
                  endValue: widgetPointerValue,
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
        title: Text('Virtual Aid'),
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
