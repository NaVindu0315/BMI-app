import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'input page.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiresults,
      required this.bodyshaming,
      required this.resulttext});
  final String bmiresults;
  final String resulttext;
  final String bodyshaming;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('             BMI Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: ktitletextstyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  //color: Color(0xFF101E33),
                  color: kinnactivecolor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resulttext.toUpperCase(),
                      style: kresultext,
                    ),
                    Text(
                      bmiresults,
                      style: kbmitext,
                    ),
                    Text(
                      bodyshaming,
                      style: kbodytext,
                    )
                  ],
                ),
              ),
            ),

            ///pink bar
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: kbottomcontainercolor,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kbottomcontainerheight,
                child: Center(
                  child: Text(
                    'Recalculate Again',
                    style: klargeButon,
                  ),
                ),
              ),
            ),

            ///pink  bar end
          ],
        ));
  }
}
