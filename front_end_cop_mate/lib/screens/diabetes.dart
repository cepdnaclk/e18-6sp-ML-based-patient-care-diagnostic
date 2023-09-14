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
  String pregnancies = "";
  String glucose = "";
  String BloodPressure = "";
  String SkinThickness = "";
  String Insulin = "";
  String BMI = "";
  String DiabetesPedigreeFunction = "";
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

  Widget _buildpregnancies() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter pregnancies';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          pregnancies = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "pregnancies",
        icon: Icon(
          FontAwesomeIcons.baby,
          color: Colors.black,
        ),
        hintText: "pregnancies",
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

  Widget _buildglucose() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter glucose';
        }

        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          glucose = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "glucose",
        icon: Icon(
          FontAwesomeIcons.candyCane,
          color: Colors.black,
        ),
        hintText: "glucose",
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

  Widget _buildBloodPressure() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Blood Pressure';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          BloodPressure = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Blood Pressure",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "Blood Pressure",
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

  Widget _buildSkinThickness() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter SkinThickness';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          SkinThickness = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "SkinThickness",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "SkinThickness",
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

  Widget _buildInsulin() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter Insulin';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          Insulin = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Insulin",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "Insulin",
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

  Widget _buildBMI() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter BMI';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          BMI = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "BMI",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "BMI",
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

  Widget _buildDiabetesPedigreeFunction() {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter DiabetesPedigreeFunction';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null && value.isNotEmpty) {
          DiabetesPedigreeFunction = value;
        }
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "DiabetesPedigreeFunction",
        icon: Icon(
          FontAwesomeIcons.ruler,
          color: Colors.black,
        ),
        hintText: "DiabetesPedigreeFunction",
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
        title: Text('Diabetes Prediction'),
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
                          _buildpregnancies(),
                          SizedBox(height: 20),
                          _buildglucose(),
                          SizedBox(height: 20),
                          _buildBloodPressure(),
                          SizedBox(height: 20),
                          _buildSkinThickness(),
                          SizedBox(height: 20),
                          _buildInsulin(),
                          SizedBox(height: 20),
                          _buildBMI(),
                          SizedBox(height: 20),
                          _buildDiabetesPedigreeFunction(),
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
