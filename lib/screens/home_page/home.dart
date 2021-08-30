import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../authentication_service.dart';
import '../../pallet.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Center(
        child: Column(children: [
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.grey[900]),
            height: size.height * .1,
            width: size.width * .95,
            child:  Center(
                
                child: Text(
              "To start useing go into settings and setup a New Contract",
              style: kBodyText.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            )),
          )
        ]),
      ),
    );
  }
}
