import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constantValues.dart';

class bottomButton extends StatelessWidget {
  bottomButton({@required this.onTap, @required this.bottomTitle});

  final Function onTap;
  final String bottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          bottomTitle,
          textAlign: TextAlign.center,
          style: kNumbersLabel,
        ),
        padding: EdgeInsets.only(top: 5.0),
        color: kButtomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        height: 60.0,
        width: double.infinity,
      ),
    );
  }
}
