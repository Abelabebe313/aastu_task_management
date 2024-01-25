import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/Text_input_field.dart';
import 'package:flutter_date_range_picker/flutter_date_range_picker.dart';

class DateandTimePicker extends StatefulWidget {
  const DateandTimePicker({super.key});

  @override
  State<DateandTimePicker> createState() => _DateandTimePickerState();
}

class _DateandTimePickerState extends State<DateandTimePicker> {
  TextEditingController startdate = TextEditingController();
  TextEditingController enddate = TextEditingController();
  DateRange? selectedDateRange;
  bool doubleMonth = false;

  void _onDateRangeChanged(DateRange? value) {
    setState(() {
      selectedDateRange = value;
      startdate.text = selectedDateRange!.start.toString();
      enddate.text = selectedDateRange!.end.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.clear,
                    color: textColor2,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              children: [
                // start date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Start Date',
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          TextInputField(
                            label: "set start date",
                            controller: startdate,
                            box_width: 165,
                            box_height: 55,
                            line: 1,
                            textSize: 12,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),

                SizedBox(
                  width: 20,
                ),
                // end date
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Due Date',
                        style: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          TextInputField(
                            label: "set due date",
                            controller: enddate,
                            box_width: 165,
                            box_height: 55,
                            line: 1,
                            textSize: 12,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: DateRangePickerWidget(
                  doubleMonth: doubleMonth,
                  maximumDateRangeLength: 10,
                  minimumDateRangeLength: 3,
                  initialDateRange: selectedDateRange,
                  disabledDates: [DateTime(2023, 11, 20)],
                  initialDisplayedDate:
                      selectedDateRange?.start ?? DateTime(2023, 11, 20),
                  onDateRangeChanged: _onDateRangeChanged,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
