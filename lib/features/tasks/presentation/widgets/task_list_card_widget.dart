import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';

class TaskListCardWidget extends StatelessWidget {
  final String title;
  final String date;
  final int collaboration;
  const TaskListCardWidget({
    super.key,
    required this.title,
    required this.date,
    required this.collaboration,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.circle_outlined,
                color: borderColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Poppins-SemiBold',
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Ionicons.calendar_outline,
                      color: textColor2,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      date,  // date goes here
                      style: const TextStyle(
                        fontFamily: 'Poppins-Light',
                        fontSize: 14,
                        color: textColor2,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
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
                )
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                size: 32,
                color: buttonColor,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
        const Divider(
          color: borderColor,
        ),
      ],
    );
  }
}
