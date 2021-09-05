import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page/home/local_widgets_home/contract_dropdown.dart';
import 'package:myapp/screens/home_page/home/local_widgets_home/date_picker.dart';
import 'package:intl/intl.dart';
import 'package:myapp/pallet.dart';

class PayInfo extends StatefulWidget {
  const PayInfo({Key? key}) : super(key: key);

  @override
  _PayInfoState createState() => _PayInfoState();
}

class _PayInfoState extends State<PayInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Day Rate: ',
                    style: kBodyText,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Gold.kGold.shade400.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '\$354.72 ',
                        style: kBodyText.copyWith(color: Clay.kClay),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Hour Rate: ',
                    style: kBodyText,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Gold.kGold.shade400.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '\$29.56 ',
                        style: kBodyText.copyWith(color: Clay.kClay),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    '401k\nContribution: ',
                    style: kBodyText,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Gold.kGold.shade400.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '10% ',
                        style: kBodyText.copyWith(color: Clay.kClay),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Benefit Base: ',
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
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Benefit days: ',
                    style: kBodyText,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Gold.kGold.shade400.withOpacity(0.7)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        '28/30',
                        style: kBodyText.copyWith(color: Clay.kClay),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
