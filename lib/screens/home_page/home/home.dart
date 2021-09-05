import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/screens/home_page/home/local_widgets_home/contract_dropdown.dart';
import 'package:myapp/screens/home_page/home/local_widgets_home/date_picker.dart';
import 'package:intl/intl.dart';
import 'package:myapp/screens/home_page/home/local_widgets_home/pay_info.dart';
import '../../../pallet.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String dropdownvalue = 'Taino';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Text(
                  "Contract/Vessel: ",
                  style: kBodyText.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              ContractDropDown(),
              IconButton(
                icon: Icon(FontAwesomeIcons.plus),
                color: Gold.kGold,
                onPressed: () {},
              )
            ],
          ),
        ),
        //
        //
        //
        const SizedBox(height: 15),
        Padding(
          //
          //
          //
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    ),
                    PayInfo()
                  ],
                ),
              ),
              //
              //
              //
              const SizedBox(
                width: 15,
              ),
              //
              //
              //
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
                    DateRangePickerWidget(), // Day Calculator; useing files date_picker & button_widget
                  ],
                ),
              ),
            ],
          ),
        ),
        //
        //
        //
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.grey[900]),
            height: size.height * .33,
            width: size.width * 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    'Pay Calculations',
                    style: kHeadings.copyWith(fontSize: 28),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Gold.kGold,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Annual: ',
                        style: kBodyText,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Gold.kGold.shade400.withOpacity(0.7)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '\$212.80',
                            style: kBodyText.copyWith(color: Clay.kClay),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
