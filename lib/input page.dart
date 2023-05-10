import 'package:flutter/material.dart';
import '';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'results_page.dart';
import 'cal.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  ///alert box
  void alertvox() {
    Alert(
      context: context,
      image: Image.asset('images/n.png'),
      title: "Developed by",
      desc: "NaVindu LakShan",
      buttons: [
        DialogButton(
          color: Color(0xFFEB1555),
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          width: 120,
        )
      ],
    ).show();
  }

  ///alert box end

  int height = 180;
  Gender SelectedGender = Gender.none;
  int weight = 60;
  int age = 10;
  // Color malecardcolor = innactivecolor;
  // Color femalecardcolor = innactivecolor;
//1= male 2= female

  /* void updatecolor(Gender gender) {
    if (gender == Gender.male) {
      if (malecardcolor == innactivecolor) {
        malecardcolor = activecolor;
        femalecardcolor = innactivecolor;
      } else {
        malecardcolor = innactivecolor;
      }
    } else if (gender == Gender.female) {
      if (femalecardcolor == innactivecolor) {
        femalecardcolor = activecolor;
        malecardcolor = innactivecolor;
      } else {
        femalecardcolor = innactivecolor;
      }
    }
    setState(() {});
  }*/
  /* void updatecolor(int gender) {
    if (gender == 1) {
      malecardcolor =
          malecardcolor == innactivecolor ? activecolor : innactivecolor;
    } else if (gender == 2) {
      femalecardcolor =
          femalecardcolor == innactivecolor ? activecolor : innactivecolor;
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0A0E21),
                ),
                onPressed: () {
                  alertvox();
                },
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ))),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ///first row
          Expanded(
            child: Row(
              children: <Widget>[
                ///first box
                Expanded(
                  child: reusable(
                    onpress: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                    cardChild: icontest(
                      iconname: FontAwesomeIcons.mars,
                      textdis: 'MALE',
                    ),
                    colour: SelectedGender == Gender.male
                        ? kactivecolor
                        : kinnactivecolor,
                  ),
                ),

                ///first box end
                ///second box
                Expanded(
                  child: reusable(
                    onpress: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                    cardChild: icontest(
                      iconname: FontAwesomeIcons.venus,
                      textdis: 'FEMALE',
                    ),
                    colour: SelectedGender == Gender.female
                        ? kactivecolor
                        : kinnactivecolor,
                  ),
                ),

                ///second box end
              ],
            ),
          ),

          ///first row end
          ///second row
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: reusable(
                    onpress: () {},
                    cardChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ///height row label
                        Text(
                          ' Height',
                          style: klabeltext,
                        ),

                        ///end of label
                        /// value label
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: knumbertext,
                            ),
                            Text(
                              ' cm',
                              style: klabeltext,
                            )
                          ],
                        ),

                        ///value label end
                        ///slider
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: kactivecolor,
                            inactiveColor: Color(0xFF8D8E98),
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            },
                          ),
                        ),

                        ///slider end
                      ],
                    ),
                    colour: kinnactivecolor,
                  ),
                ),
              ],
            ),
          ),

          ///second row end
          ///third row start
          Expanded(
            child: Row(
              children: <Widget>[
                ///first button
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      //color: Color(0xFF101E33),
                      color: kinnactivecolor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: klabeltext,
                        ),
                        Text(
                          weight.toString(),
                          style: knumbertext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                    //color: kinnactivecolor,
                  ),
                ),

                ///first button end
                ///second button start
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      //color: Color(0xFF101E33),
                      color: kinnactivecolor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: klabeltext,
                        ),
                        Text(
                          age.toString(),
                          style: knumbertext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                    //color: kinnactivecolor,
                  ),
                ),

                ///second button end
              ],
            ),
          ),

          ///pink bar
          GestureDetector(
            onTap: () {
              Calculator calc = Calculator(weight: weight, height: height);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultPage(
                          bmiresults: calc.CalculateBMI(),
                          resulttext: calc.getresult(),
                          bodyshaming: calc.bodyshaming(),
                        )),
              );
            },
            child: Container(
              color: kbottomcontainercolor,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.only(bottom: 20.0),
              width: double.infinity,
              height: kbottomcontainerheight,
              child: Center(
                child: Text(
                  'Calculate',
                  style: klargeButon,
                ),
              ),
            ),
          ),

          ///pink  bar end
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kbackgroundicon,
    );
  }
}
