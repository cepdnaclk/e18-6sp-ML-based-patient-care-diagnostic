import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';
import 'package:front_end_cop_mate/screens/welcome_screen.dart';
import 'package:front_end_cop_mate/screens/pop_disease.dart';
import 'package:front_end_cop_mate/models/Diagnosis.dart';
import 'package:http/http.dart' as http;

class quick_checkup extends StatelessWidget {
  static const String id = 'quick_checkup';

  const quick_checkup({Key? key, this.selectedUserList}) : super(key: key);
  final List<User_1>? selectedUserList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFffbfe7)),
        child: FilterListWidget<User_1>(
          listData: userList,
          selectedListData: selectedUserList,
          onApplyButtonClick: (list) async {
            // do something with list ..

            var length = 0;
            String symptoms = "";
            if (list != null) {
              length = list.length;
            }
            for (var i = 0; i < length; i++) {
              // TO DO
              var currentElement = list![i].name;

              if (currentElement != null) {
                symptoms = symptoms + currentElement + ",";
              }
            }

            Map data = {"symptoms": symptoms};

            var body = jsonEncode(data);

            if (true) {
              final response = await http.post(
                Uri.parse(
                    'https://thamish-ml-based-patient-care.onrender.com/predict_all'),
                headers: <String, String>{
                  'Content-Type': 'application/json; charset=UTF-8',
                },
                body: body,
              );
              if (response.statusCode == 200) {
                var prediction = jsonDecode(response.body);
                print(prediction["prediction"]);
                print(prediction["Cure"]);
                print(prediction["Doctor"]);
                print(prediction["Risk"]);

                Diagnosis diagnosis = Diagnosis(
                    disease: prediction["prediction"],
                    cure: prediction["Cure"],
                    doctor: prediction["Doctor"],
                    riskFactor: prediction["Risk"]);

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => pop_disease(
                          diagnosis: diagnosis,
                        )));
              } else {
                print(response.statusCode);
              }
            }
          },
          choiceChipLabel: (item) {
            /// Used to display text on chip
            return item!.name;
          },
          validateSelectedItem: (list, val) {
            ///  identify if item is selected or no
            var s = list;
            if (s != null) {
              return list!.contains(val); // Safe
            }
            return false;
          },
          onItemSearch: (user, query) {
            /// When search query change in search bar then this method will be called
            ///
            /// Check if items contains query
            print("line434343");
            return user.name!.toLowerCase().contains(query.toLowerCase());
          },
        ),
      ),
    );
  }
}

class User_1 {
  final String? name;
  final String? avatar;
  User_1({this.name, this.avatar});
}

List<User_1> userList = [
  User_1(name: "fever", avatar: ""),
  User_1(name: "cough", avatar: ""),
  User_1(name: "sore throat", avatar: ""),
  User_1(name: "runny or stuffy nose", avatar: ""),
  User_1(name: "muscle aches", avatar: ""),
  User_1(name: "headache", avatar: ""),
  User_1(name: "fatigue", avatar: ""),
  User_1(name: "mucus production", avatar: ""),
  User_1(name: "shortness of breath", avatar: ""),
  User_1(name: "chest pain", avatar: ""),
  User_1(name: "nausea", avatar: ""),
  User_1(name: "vomiting", avatar: ""),
  User_1(name: "lightheadedness", avatar: ""),
  User_1(name: "sweating", avatar: ""),
  User_1(name: "sudden weakness", avatar: ""),
  User_1(name: "numbness on one side of the body", avatar: ""),
  User_1(name: "confusion", avatar: ""),
  User_1(name: "difficulty speaking", avatar: ""),
  User_1(name: "trouble seeing in one eye", avatar: ""),
  User_1(name: "severe headache", avatar: ""),
  User_1(name: "lump", avatar: ""),
  User_1(name: "unexplained weight loss", avatar: ""),
  User_1(name: "changes in bowel", avatar: ""),
  User_1(name: "bladder habits", avatar: ""),
  User_1(name: "persistent cough", avatar: ""),
  User_1(name: "indigestion", avatar: ""),
  User_1(name: "unexplained bleeding or discharge", avatar: ""),
  User_1(name: "increased thirst", avatar: ""),
  User_1(name: "frequent urination", avatar: ""),
  User_1(name: "blurred vision", avatar: ""),
  User_1(name: "cuts that are slow to heal", avatar: ""),
  User_1(name: "memory loss", avatar: ""),
  User_1(name: "difficulty thinking", avatar: ""),
  User_1(name: "changes in personality or behavior", avatar: ""),
  User_1(name: "pain in joints", avatar: ""),
  User_1(name: "stiffness in joints", avatar: ""),
  User_1(name: "swelling of joints", avatar: ""),
  User_1(name: "inflammation in the joints", avatar: ""),
  User_1(name: "conjunctivitis", avatar: ""),
  User_1(name: "rash", avatar: ""),
  User_1(name: "pink eye", avatar: ""),
  User_1(name: "diarrhea", avatar: ""),
  User_1(name: "jaundice", avatar: ""),
  User_1(name: "liver damage", avatar: ""),
  User_1(name: "physical dependence on alcohol", avatar: ""),
  User_1(name: "tolerance to alcohol", avatar: ""),
  User_1(name: "withdrawal symptoms", avatar: ""),
  User_1(name: "impaired judgment", avatar: ""),
  User_1(name: "memory problems", avatar: ""),
  User_1(name: "heart disease", avatar: ""),
  User_1(name: "cancer", avatar: ""),
  User_1(name: "runny nose", avatar: ""),
  User_1(name: "sneezing", avatar: ""),
  User_1(name: "itchy eyes", avatar: ""),
  User_1(name: "itchy nose", avatar: ""),
  User_1(name: " itchy throat", avatar: ""),
  User_1(name: " itchy palate", avatar: ""),
  User_1(name: "excessive worry", avatar: ""),
  User_1(name: "fear", avatar: ""),
  User_1(name: "anxiety that interfere with daily life", avatar: ""),
  User_1(name: "pain in the lower right abdomen", avatar: ""),
  User_1(name: "difficulty with social interaction", avatar: ""),
  User_1(name: "repetitive behaviors", avatar: ""),
  User_1(name: "restricted interests", avatar: ""),
  User_1(name: "wheezing", avatar: ""),
  User_1(name: "coughing", avatar: ""),
  User_1(name: "chest tightness", avatar: ""),
  User_1(name: "stiff neck", avatar: ""),
  User_1(name: "sensitivity to light", avatar: ""),
  User_1(name: "extreme mood swings", avatar: ""),
  User_1(name: "from manito depression", avatar: ""),
  User_1(name: "blood in the urine", avatar: ""),
  User_1(name: "pain or burning when urinating", avatar: ""),
  User_1(name: "urgency to urinate", avatar: ""),
  User_1(name: "incontinence", avatar: ""),
  User_1(
      name: "pain swelling redness warmth tenderness in the affected area",
      avatar: ""),
  User_1(name: "difficulty breathing", avatar: ""),
  User_1(name: "coughing up blood", avatar: ""),
  User_1(name: "pain swelling inflammation in bursa", avatar: ""),
  User_1(name: "which is small sac of fluid that cushions joints", avatar: ""),
  User_1(name: "abnormal pap test results", avatar: ""),
  User_1(name: "abnormal vaginal bleeding", avatar: ""),
  User_1(name: "pain during sex", avatar: ""),
  User_1(name: "chronic bronchitis", avatar: ""),
  User_1(name: "emphysema", avatar: ""),
  User_1(name: "high levels of cholesterol in the blood", avatar: ""),
  User_1(name: "congestion", avatar: ""),
  User_1(name: "red eyes", avatar: ""),
  User_1(name: " itchy eyes", avatar: ""),
  User_1(name: " watery eyes", avatar: ""),
  User_1(name: "sadness", avatar: ""),
  User_1(name: "hopelessness", avatar: ""),
  User_1(name: "loss of interest in activities", avatar: ""),
  User_1(name: "changes in appetite", avatar: ""),
  User_1(name: "sleep", avatar: ""),
  User_1(name: "energy levels", avatar: ""),
  User_1(name: "loose", avatar: ""),
  User_1(name: "watery stools", avatar: ""),
  User_1(
      name:
          "disturbance in eating behavior that can lead to serious health problems",
      avatar: ""),
  User_1(name: "seizures", avatar: ""),
  User_1(name: "elevated body temperature", avatar: ""),
  User_1(name: "abdominal cramps", avatar: ""),
  User_1(name: "pain in the upper right abdomen", avatar: ""),
  User_1(
      name:
          "sexually transmitted infection that can cause burning during urination",
      avatar: ""),
  User_1(name: "discharge from the penis or vagina", avatar: ""),
  User_1(name: "pain in the lower abdomen", avatar: ""),
  User_1(name: "dizziness", avatar: ""),
  User_1(name: "fainting", avatar: ""),
  User_1(name: "inflammation of the liver", avatar: ""),
  User_1(
      name:
          "sexually transmitted infection that can cause blisters on the genitals",
      avatar: ""),
  User_1(name: "mouth", avatar: ""),
  User_1(name: "other parts of the body", avatar: ""),
  User_1(name: "abdominal pain", avatar: ""),
  User_1(name: "bloating", avatar: ""),
  User_1(name: "constipation", avatar: ""),
  User_1(name: "pain in the lower back or side", avatar: ""),
  User_1(name: "cough that does not go away", avatar: ""),
  User_1(name: "blood in the sputum", avatar: ""),
  User_1(name: "chills", avatar: ""),
  User_1(name: "swollen lymph nodes", avatar: ""),
  User_1(name: "tingling at the bite site", avatar: ""),
  User_1(name: "difficulty swallowing", avatar: ""),
  User_1(name: "hydrophobia", avatar: ""),
  User_1(name: "aerophobia", avatar: ""),
  User_1(name: "painful rash that follows nerve path", avatar: ""),
  User_1(name: "night sweats", avatar: ""),
  User_1(name: "weight loss", avatar: ""),
  User_1(name: "painful urination", avatar: ""),
  User_1(name: "burning", avatar: ""),
  User_1(name: "swollen legs", avatar: ""),
  User_1(name: " twisted veins in the legs", avatar: ""),
  User_1(name: "raised rough growths on the skin", avatar: ""),
  User_1(name: "itching burning discharge from the vaginor penis", avatar: ""),
  User_1(name: "pain redness inflammation in the eye", avatar: ""),
  User_1(name: "decreased kidney function", avatar: ""),
  User_1(name: "pale skin", avatar: ""),
  User_1(name: "bulge in the wall of the aorta", avatar: ""),
  User_1(name: "the largest artery in the body", avatar: ""),
  User_1(name: "change in bowel habits", avatar: ""),
  User_1(name: "such as diarrhea", avatar: ""),
  User_1(name: "narrowing of the stool", avatar: ""),
  User_1(name: "blood in the stool", avatar: ""),
  User_1(name: "difficulty getting and keeping an erection ", avatar: ""),
  User_1(name: "widespread pain", avatar: ""),
  User_1(name: "tenderness", avatar: ""),
  User_1(
      name: "increased pressure in the eye that can damage the optic nerve",
      avatar: ""),
  User_1(name: "lead to vision loss", avatar: ""),
  User_1(
      name:
          "condition in which the heart cannot pump blood as well as it should",
      avatar: ""),
  User_1(
      name: "damage to the kidneys that can lead to kidney failure",
      avatar: ""),
  User_1(name: "condition that affects the lungs", avatar: ""),
  User_1(name: "can make it difficult to breathe", avatar: ""),
  User_1(name: "tremors", avatar: ""),
  User_1(name: "slow movement", avatar: ""),
  User_1(name: "stiffness", avatar: ""),
  User_1(name: "difficulty with balance", avatar: ""),
  User_1(name: "coordination", avatar: ""),
  User_1(name: "pain in the upper abdomen", avatar: ""),
  User_1(name: "pain numbness tingling in the arms or legs", avatar: ""),
  User_1(name: "difficulty urinating", avatar: ""),
  User_1(name: "pain in the back or hips", avatar: ""),
  User_1(name: "erectile dysfunction", avatar: ""),
  User_1(name: "lump in the neck", avatar: ""),
  User_1(name: "hoarseness", avatar: ""),
  User_1(name: "unexplained heat intolerance", avatar: ""),
  User_1(name: "sensitivity to cold", avatar: ""),
  User_1(name: "bloody stool", avatar: ""),
  User_1(name: "itchy red inflamed skin", avatar: ""),
  User_1(name: "swelling", avatar: ""),
  User_1(name: "high blood pressure", avatar: ""),
  User_1(name: "changes in urination", avatar: ""),
  User_1(name: "hyperthyroidism which is an overactive thyroid", avatar: ""),
  User_1(name: "hypothyroidism which is an underactive thyroid", avatar: ""),
  User_1(
      name: "chronic autoimmune disease that can affect any part of the body",
      avatar: ""),
];
