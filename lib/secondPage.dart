import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantValues.dart';
import 'reusableCard.dart';
import 'bottomButtom.dart';

class PageTwo extends StatelessWidget {
  PageTwo(
      {@required this.bmi,
      @required this.resultText,
      @required this.interception});

  final String bmi;
  final String resultText;
  final String interception;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate here'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, left: 5.0),
              child: Text(
                'YOUR RESULT',
                style: kNumbersLabel,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultHeadText,
                  ),
                  Text(
                    bmi,
                    style: kResultNumber,
                  ),
                  Text(
                    interception,
                    textAlign: TextAlign.center,
                    style: kResultsuggestion,
                  ),
                ],
              ),
            ),
          ),
          bottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              bottomTitle: 'RECALCULATOR'),
        ],
      ),
    );
  }
}
