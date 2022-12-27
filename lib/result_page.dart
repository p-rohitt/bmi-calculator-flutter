import 'package:flutter/material.dart';
import 'constants.dart';
import 'resuable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {

  const ResultPage(this.bmiResult, this.bmiText, this.interpretation);


  final String bmiResult;
  final String bmiText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xFF0c1335)),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("BMI CALCULATOR"),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Result",
                style: kResultTitleTextStyle,
              ),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmiResult.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiText,
                        style: kBMITextStyle,
                      ),
                      Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: kResultMessage,
                      ),
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const InputPage()));
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                decoration: const BoxDecoration(
                  color: kBottomCardColor,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: kLargeButtonTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
