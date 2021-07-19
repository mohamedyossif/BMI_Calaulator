import 'package:bmi_cat/component/Shared_calcuate_button.dart';
import 'package:bmi_cat/constants.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String? bmi;
  final String? interpertation;
  final String? result;
  ResultScreen({this.bmi, this.interpertation, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculate',
          style: KTextStyleTitle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Your Result",
              style: KResultTitleStyle,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[850],
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '${result!.toUpperCase()}',
                    style: KResultTitleStyle,
                  ),
                  Text('$bmi', style: KTextBMI),
                  Text(
                    '$interpertation',
                    style: KInterpertationStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          CalaculateButton(
            title: 'Re-Calculated',
            onPressButton: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
