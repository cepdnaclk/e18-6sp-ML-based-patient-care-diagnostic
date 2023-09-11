import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'dart:convert';
import 'package:front_end_cop_mate/elements/heading.dart';
import 'package:front_end_cop_mate/elements/ReusableCard.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:front_end_cop_mate/bottomnavgationbar.dart';

class brain_stroke extends StatefulWidget {
  const brain_stroke({super.key});
  static const String id = 'brain_stroke';

  @override
  State<brain_stroke> createState() => _brain_strokeState();
}

class _brain_strokeState extends State<brain_stroke> {
  @override
  String Gender = "";
  String age = "";
  String hypertension = "";
  String heart_disease = "";
  String ever_married = "";
  String work_type = "";
  String residence_type = "";
  String avg_glucose_level = "";
  String bmi = "";
  String smoking_status = "";
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
          age = value;
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
      height: 40,
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
                print('switched to: $index');
              }),
        ],
      ),
    );
  }

  Widget _buildhypertension() {
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
          Text("Hyper tension?", style: TextStyle(fontSize: 15)),
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
              labels: ['Yes', 'No'],
              radiusStyle: true,
              onToggle: (index) {
                hypertension = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildheart_disease() {
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
          Text("Heart disease?", style: TextStyle(fontSize: 15)),
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
              labels: ['Yes', 'No'],
              radiusStyle: true,
              onToggle: (index) {
                heart_disease = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildever_married() {
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
          Text("Ever married?", style: TextStyle(fontSize: 15)),
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
              labels: ['Yes', 'No'],
              radiusStyle: true,
              onToggle: (index) {
                ever_married = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildwork_type() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 100,
      width: 400,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Work type?", style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 10,
          ),
          ToggleSwitch(
              minWidth: 110.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.pink[700]!],
                [Colors.purple[800]!],
                [Colors.purple[300]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 3,
              labels: ['Govt_job', 'Self employed', 'Private'],
              radiusStyle: true,
              onToggle: (index) {
                work_type = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildresidence_type() {
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
          Text("Residence type?", style: TextStyle(fontSize: 15)),
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
              labels: ['Urban', 'Rural'],
              radiusStyle: true,
              onToggle: (index) {
                residence_type = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildavg_glucose_level() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter avg_glucose_level';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          avg_glucose_level = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "avg_glucose_level",
        icon: Icon(
          FontAwesomeIcons.baby,
          color: Colors.black,
        ),
        hintText: "avg_glucose_level",
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

  Widget _buildbmi() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter bmi';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          bmi = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "bmi",
        icon: Icon(
          FontAwesomeIcons.candyCane,
          color: Colors.black,
        ),
        hintText: "bmi",
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

  Widget _buildsmoking_status() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white54,
      ),
      height: 100,
      width: 400,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text("Smoking status?", style: TextStyle(fontSize: 15)),
          SizedBox(
            height: 10,
          ),
          ToggleSwitch(
              minWidth: 100.0,
              cornerRadius: 20.0,
              activeBgColors: [
                [Colors.pink[800]!],
                [Colors.purple[800]!],
                [Colors.purple[400]!]
              ],
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: 1,
              totalSwitches: 3,
              labels: ['Never', 'Formerley', 'Smokes'],
              radiusStyle: true,
              onToggle: (index) {
                smoking_status = index.toString();
              }),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Brain Stroke Prediction'),
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
                          _buildhypertension(),
                          SizedBox(height: 20),
                          _buildheart_disease(),
                          SizedBox(height: 20),
                          _buildever_married(),
                          SizedBox(height: 20),
                          _buildwork_type(),
                          SizedBox(height: 20),
                          _buildresidence_type(),
                          SizedBox(height: 20),
                          _buildavg_glucose_level(),
                          SizedBox(height: 20),
                          _buildbmi(),
                          SizedBox(height: 20),
                          _buildsmoking_status(),
                          ElevatedButton(
                            onPressed: () async {
                              if (!_formkey.currentState!.validate()) {
                                return;
                              }
                              _formkey.currentState!.save();

                              final response = await http.post(
                                Uri.parse(
                                    'https://ml-model-api15.onrender.com/heart_disease'),
                                headers: <String, String>{
                                  'Content-Type':
                                      'application/json; charset=UTF-8',
                                },
                                body: jsonEncode(<String, String>{
                                  "age": "75",
                                  "anaemia": "0",
                                  "creatinine_phosphokinase": "582",
                                  "diabetes": "0",
                                  "ejection_fraction": "20",
                                  "high_blood_pressure": "21",
                                  "platelets": "265000.03",
                                  "serum_creatinine": "1.9",
                                  "serum_sodium": "130",
                                  "sex": "1",
                                  "smoking": "0",
                                  "time": "4"
                                }),
                              );
                              print(response.statusCode);
                              if (response.statusCode == 200) {
                                var prediction = jsonDecode(response.body);
                                int predict = prediction["prediction"];
                                print(prediction["prediction"].runtimeType);
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Successful!'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: <Widget>[
                                            Text("Prediction:" +
                                                predict.toString()),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Okay'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                showDialog<void>(
                                  context: context,
                                  barrierDismissible:
                                      false, // user must tap button!
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Unsuccessful'),
                                      content: SingleChildScrollView(
                                        child: ListBody(
                                          children: const <Widget>[
                                            Text('Please try again!'),
                                          ],
                                        ),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Okay'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
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
