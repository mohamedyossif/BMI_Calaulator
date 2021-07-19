import 'package:bmi_cat/component/ReusedCard.dart';
import 'package:bmi_cat/component/SharedRow.dart';
import 'package:bmi_cat/component/Shared_calcuate_button.dart';
import 'package:bmi_cat/component/icon_card.dart';
import 'package:bmi_cat/component/sharedSizedBox.dart';
import 'package:bmi_cat/component/shared_title.dart';
import 'package:bmi_cat/screens/calculate_brain.dart';
import 'package:bmi_cat/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

enum Gender {
  male,
  female,
}
var selectionGender;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int weight = 90;
  int height = 130;
  int age = 20;
  List<String> units = ['km', 'cm', 'years'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.notes_sharp,
              color: KIconColor,
            ),
            Text(
              "BMI Calculator",
              style: KTextBMI,
            ),
            Icon(
              Icons.notifications,
              color: KIconColor,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TitleShared('Gender'),
          //Row1 for Gender
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuedCard(
                    //check active or inactive
                    colour: selectionGender == Gender.male
                        ? KactiveColor
                        : KInactiveColor,
                    onPress: () {
                      setState(() {
                        selectionGender = Gender.male;
                      });
                    },
                    iconCard: IconCard(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male ',
                    ),
                  ),
                ),
                Expanded(
                    child: ResuedCard(
                  colour: selectionGender == Gender.female
                      ? KactiveColor
                      : KInactiveColor,
                  onPress: () {
                    setState(() {
                      selectionGender = Gender.female;
                    });
                  },
                  iconCard: IconCard(
                    icon: FontAwesomeIcons.venus,
                    label: 'Female ',
                  ),
                )),
              ],
            ),
          ),
          divider(),
          TitleShared('Weight'),
          //Row2 for weight
          SharedRow(
            value: weight,
            unit: units[0],
            onpressed1: () {
              setState(() {
                if (weight >= 10) {
                  weight--;
                }
              });
            },
            onpressed2: () {
              setState(() {
                if (weight <= 400) {
                  weight++;
                }
              });
            },
          ),
          divider(),
          TitleShared('Height'),
          //Row3 for height
          SharedRow(
            value: height,
            unit: units[1],
            onpressed1: () {
              setState(() {
                if (height >= 60) {
                  height--;
                }
              });
            },
            onpressed2: () {
              setState(() {
                if (height <= 200) {
                  height++;
                }
              });
            },
          ),
          divider(),
          TitleShared('Age'),
          //Row4 for age
          SharedRow(
            value: age,
            unit: units[2],
            onpressed1: () {
              setState(() {
                if (age >= 1) {
                  age--;
                }
              });
            },
            onpressed2: () {
              setState(() {
                if (age <= 110) {
                  age++;
                }
              });
            },
          ),
          //final Row
          CalaculateButton(
            height: height,
            weight: weight,
            title: 'Calculate',
            onPressButton: () {
              CalculatorBrain calculatorBrain =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (c) => ResultScreen(
                    bmi: calculatorBrain.calculateBMI(),
                    interpertation: calculatorBrain.getInterpretation(),
                    result: calculatorBrain.getResult(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
