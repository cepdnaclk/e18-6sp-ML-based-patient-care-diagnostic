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

class diabetes extends StatefulWidget {
  const diabetes({super.key});
  static const String id = 'diabetes';

  @override
  State<diabetes> createState() => _diabetesState();
}

class _diabetesState extends State<diabetes> {
  @override
  String age = "";
  String anaemia = "";
  String creatinine_phosphokinase = "";
  String diabetes = "";
  String ejection_fraction = "";
  String high_blood_pressure = "";
  String platelets = "";
  String serum_creatinine = "";
  String serum_sodium = "";
  String sex = "";
  String smoking = "";
  String time = "";
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

  Widget _buildanaemia() {
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
          Text("Do you have anaemia?", style: TextStyle(fontSize: 15)),
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
                anaemia = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildcreatinine_phosphokinase() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter creatinine_phosphokinase';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          creatinine_phosphokinase = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "creatinine_phosphokinase",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "creatinine_phosphokinase",
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

  Widget _buildiabetes() {
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
          Text("Do you have diabetes?", style: TextStyle(fontSize: 15)),
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
                diabetes = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildejection_fraction() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter ejection_fraction';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          ejection_fraction = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "ejection_fraction",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "ejection_fraction",
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

  Widget _buildhigh_blood_pressure() {
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
          Text("High blood pressure?", style: TextStyle(fontSize: 15)),
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
                high_blood_pressure = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildplatelets() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter platelets';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          platelets = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "platelets",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "platelets",
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

  Widget _buildserum_creatinine() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter serum_creatinine';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          serum_creatinine = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "serum_creatinine",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "serum_creatinine",
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

  Widget _buildserum_sodium() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter serum_sodium';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          serum_sodium = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "serum_sodium",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "serum_sodium",
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

  Widget _buildsex() {
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
          Text("Sex:", style: TextStyle(fontSize: 15)),
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
                sex = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildsmoke() {
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
          Text("Do you Smoke?", style: TextStyle(fontSize: 15)),
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
                smoking = index.toString();
              }),
        ],
      ),
    );
  }

  Widget _buildtime() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'How many times have you had Heart Failures?';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          time = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Heart Failures",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "Heart Failures",
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

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Heart Disease Prediction'),
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
                          _buildcreatinine_phosphokinase(),
                          SizedBox(height: 20),
                          _buildejection_fraction(),
                          SizedBox(height: 20),
                          _buildplatelets(),
                          SizedBox(height: 20),
                          _buildserum_creatinine(),
                          SizedBox(height: 20),
                          _buildserum_sodium(),
                          SizedBox(height: 20),
                          _buildtime(),
                          SizedBox(height: 20),
                          _buildsex(),
                          SizedBox(height: 20),
                          _buildiabetes(),
                          SizedBox(height: 20),
                          _buildhigh_blood_pressure(),
                          SizedBox(height: 20),
                          _buildanaemia(),
                          SizedBox(height: 20),
                          _buildsmoke(),
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
