import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';

class TaskGridCardWidget extends StatelessWidget {
  final String title;
  final String date;
  final int collaboration;
  const TaskGridCardWidget({
    super.key,
    required this.title,
    required this.date,
    required this.collaboration,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.circle_outlined,
                color: borderColor,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 30,
                color: buttonColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Center(
          child: SizedBox(
            width: 155,
            height: 50,
            child: Text(
              title, // title goes here
              style: const TextStyle(
                fontFamily: 'Poppins-SemiBold',
                fontSize: 14,
              ),
            ),
          ),
        ),

        //date
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Ionicons.calendar_outline,
              color: textColor2,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              date, // date goes here
              style: const TextStyle(
                fontFamily: 'Poppins-Light',
                fontSize: 14,
                color: textColor2,
              ),
            ),
          ],
        ),

        //collaboration
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Ionicons.person_circle_outline,
              color: textColor2,
              size: 23,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '${collaboration}',
              style: const TextStyle(
                fontFamily: 'Poppins-Light',
                fontSize: 14,
                color: textColor2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
