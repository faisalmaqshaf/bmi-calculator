import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calculate_brain.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String bmiInterpretation;
  final String resultText;

  ResultsPage({
    @required this.bmiResult,
    @required this.resultText,
    @required this.bmiInterpretation,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              // child: Text('BMI CALCULATOR'),
              ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.all(14.0),
                        child: Text(
                          'Your Result',
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Text(
                                resultText.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Text(
                                bmiResult,
                                style: TextStyle(
                                    fontSize: 70.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Center(
                              child: Text(
                                bmiInterpretation,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        color: Color(0xFF4EB96B),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              'Re-Calculate',
                              style: TextStyle(
                                  fontSize: 40.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          margin: EdgeInsets.all(5.0),
                          padding: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 200.0,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
