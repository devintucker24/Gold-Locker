import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page/Local_widgets/button_widget.dart';
import 'package:intl/intl.dart';

class DateRangePickerWidget extends StatefulWidget {
  @override
  _DateRangePickerWidgetState createState() => _DateRangePickerWidgetState();
}

class _DateRangePickerWidgetState extends State<DateRangePickerWidget> {
  DateTimeRange? dateRange;

  String getFrom() {
    if (dateRange == null) {
      return 'Sign-on';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.start);
    }
  }

  String getUntil() {
    if (dateRange == null) {
      return 'Sign-off';
    } else {
      return DateFormat('MM/dd/yyyy').format(dateRange!.end);
    }
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
            child: ButtonWidget(
              text: getFrom(),
              onClicked: () => pickDateRange(context),
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.arrow_downward, color: Colors.white),
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: ButtonWidget(
              text: getUntil(),
              onClicked: () => pickDateRange(context),
            ),
          ),
        ],
      );

  Future pickDateRange(BuildContext context) async {
    final initialDateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(Duration(hours: 24 * 49)),
    );
    final newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: dateRange ?? initialDateRange,
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}

var daterange = dateRange;
