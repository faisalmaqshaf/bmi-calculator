import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculate_brain.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 125;
  int weight = 60;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    void updateColor(int num) {
      if (num == 1) {
        setState(() {
          if (kMaleInActiveCardColor == Colors.blue) {
            kMaleInActiveCardColor = Color(0xFF4EB96B);
            print('ifff');
          } else {
            print('else part');
            kMaleInActiveCardColor = Colors.blue;
            kFemaleInActiveCardColor = Color(0xFF4EB96B);
          }
        });
      }
      if (num == 2) {
        setState(() {
          if (kFemaleInActiveCardColor == Colors.pinkAccent) {
            kFemaleInActiveCardColor = Color(0xFF4EB96B);
            print('ifff');
          } else {
            print('else part');
            kFemaleInActiveCardColor = kFemaleActiveCardColor;
            kMaleInActiveCardColor = Color(0xFF4EB96B);
          }
        });
      }
    }

    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  //Male card
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColor(1);
                        print('Male Card!');
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Icon(
                                FontAwesomeIcons.mars,
                                size: 70.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: kMaleInActiveCardColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 200.0,
                        width: 170.0,
                      ),
                    ),
                  ),
                  //Female Card
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        updateColor(2);
                        print('Female Card!');
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 70.0,
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: kFemaleInActiveCardColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: 200.0,
                        width: 170.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Center Box
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Height',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Slider(
                        value: height.toDouble(),
                        min: 110.0,
                        max: 220.0,
                        activeColor: Colors.indigo,
                        inactiveColor: Colors.greenAccent,
                        onChanged: (double newValue) {
                          print(newValue);
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ],
                ),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 200.0,
                width: double.infinity,
              ),
            ),
            // two cards weight and age
            Expanded(
              child: Row(
                children: <Widget>[
                  //weight card
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ClipOval(
                                child: Material(
                                  color: Colors.indigo, // button color
                                  child: InkWell(
                                    //splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 56,
                                        height: 56,
                                        child: Icon(Icons.add)),
                                    onTap: () {
                                      print('click add');
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.indigo, // button color
                                  child: InkWell(
                                    //splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 56,
                                        height: 56,
                                        child: Icon(Icons.remove)),
                                    onTap: () {
                                      print('click remove or subtract');
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 200.0,
                      width: 170.0,
                    ),
                  ),
                  //Age card
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Age',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              ClipOval(
                                child: Material(
                                  color: Colors.indigo, // button color
                                  child: InkWell(
                                    //splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 56,
                                        height: 56,
                                        child: Icon(Icons.add)),
                                    onTap: () {
                                      print('click add');
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ClipOval(
                                child: Material(
                                  color: Colors.indigo, // button color
                                  child: InkWell(
                                    //splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 56,
                                        height: 56,
                                        child: Icon(Icons.remove)),
                                    onTap: () {
                                      print('click remove or subtract');
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 200.0,
                      width: 170.0,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
                print('Calculation: ');

                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);

                String resultT = calc.calculateBMI();
                String resultTextT = calc.getResultText();
                String interpretationT = calc.getInterpretation();

                Navigator.push(
                  (context),
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiResult: resultT,
                      resultText: resultTextT,
                      bmiInterpretation: interpretationT,
                    ),
                  ),
                );
              },
              child: Container(
                height: 55.0,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Calculate',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }
}
