import 'dart:ui';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page/Local_widgets/dropdown.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../../authentication_service.dart';
import '../../pallet.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String dropdownvalue = 'Taino';

  final format = DateFormat('mm-dd-yyyy');

  var items = ['Taino', 'El Coquie', 'Bay State', 'Isla Bella'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      const SizedBox(height: 20),
      Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey[900]),
          height: size.height * .08,
          width: size.width * .95,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current Contract/Vessel: ",
                style: kBodyText.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Container(
                height: size.height * .04,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(color: Gold.kGold.shade400),
                child: DropdownButton(
                  value: dropdownvalue,
                  dropdownColor: Gold.kGold.shade400,
                  items: items.map<DropdownMenuItem<String>>((String items) {
                    return DropdownMenuItem<String>(
                        value: items, child: Text(items));
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ],
          )),
      const SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[900]),
              height: size.height * .3,
              width: size.width * .45,
              child: Column(
                children: [
                  Text(
                    'Pay Info',
                    style: kHeadings.copyWith(fontSize: 28),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Gold.kGold,
                  )
                ],
              )),
          const SizedBox(
            width: 15,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[900]),
              height: size.height * .3,
              width: size.width * .45,
              child: Column(
                children: [
                  Text(
                    'Day Calculator',
                    style: kHeadings.copyWith(fontSize: 28),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                    color: Gold.kGold,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        'Sign-On Date:',
                        textAlign: TextAlign.left,
                        style: kBodyText,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: DateTimePicker(
                      style: kBodyText,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                      ),
                      type: DateTimePickerType.date,
                      dateMask: 'dd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      onChanged: (val) => print(val),
                      validator: (val) {
                        print(val);
                        return null;
                      },
                      onSaved: (val) => print(val),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                      child: Text(
                        'Sign-Off Date:',
                        textAlign: TextAlign.left,
                        style: kBodyText,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: DateTimePicker(
                        style: kBodyText,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                        ),
                        type: DateTimePickerType.date,
                        dateMask: 'dd MMM, yyyy',
                        initialValue: DateTime.now().toString(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                          return null;
                        },
                        onSaved: (val) => print(val),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                        child: Text('Days: ',
                            style: kBodyText.copyWith(fontSize: 24)),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            15,
                            18,
                            10,
                          ),
                          child: Container(
                              color: Gold.kGold.shade300,
                              height: size.height * .045,
                              width: size.width * .18,
                              child: Text(' ')))
                    ],
                  ),
                ],
              ))
        ]),
      )
    ]);
  }
}
