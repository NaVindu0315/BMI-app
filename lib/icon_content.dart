import 'package:flutter/material.dart';
import 'constants.dart';

////ICON AND THE TEXT
class icontest extends StatelessWidget {
  final textdis;
  final IconData iconname;
  icontest({required this.textdis, required this.iconname});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconname,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textdis,
          style: klabeltext,
        ),
      ],
    );
  }
}
