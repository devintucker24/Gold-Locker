import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page/home/local_widgets_home/date_picker.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pallet.dart';

class ContractDropDown extends StatefulWidget {
  const ContractDropDown({Key? key}) : super(key: key);

  @override
  _ContractDropDown createState() => _ContractDropDown();
}

var items = [
  'Taino',
  'El Coquie',
  'Bay State',
  'Isla Bella',
  "Inversion of the Curve"
];

class _ContractDropDown extends State<ContractDropDown> {
  String dropdownvalue = 'Taino';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .06,
      width: size.height * .18,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Gold.kGold),
      )),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: DropdownButton(
        underline: Container(
          height: 1,
          color: Colors.transparent,
        ),
        elevation: 15,
        isExpanded: true,
        style: kBodyText,
        menuMaxHeight: size.height * .3,
        value: dropdownvalue,
        alignment: AlignmentDirectional.center,
        dropdownColor: Clay.kClay,
        items: items.map<DropdownMenuItem<String>>((String items) {
          return DropdownMenuItem<String>(value: items, child: Text(items));
        }).toList(),
        onChanged: (String? newValue) {
          setState(
            () {
              dropdownvalue = newValue!;
            },
          );
        },
      ),
    );
  }
}
