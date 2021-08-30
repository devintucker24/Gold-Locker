import 'package:flutter/material.dart';
import '../pallet.dart';

class SquareButton extends StatelessWidget {
  SquareButton({
    Key? key,

    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 26, 0),
      child: Container(
        height: size.height * 0.06,
        width: size.width *0.38,
        decoration: BoxDecoration(
          color: kteal,
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(buttonName, style: kBodyText.copyWith(fontSize: 16)
          ),
        ),
      ),
    );
  }
}