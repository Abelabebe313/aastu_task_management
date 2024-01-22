import 'package:flutter/material.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';


class EmptyMyWorkWidget extends StatelessWidget {
  const EmptyMyWorkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 1,
            color: borderColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 2,
                  color: borderColor,
                ),
              ),
              child: const Icon(
                Icons.checklist_outlined,
                size: 40,
                color: borderColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.25,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '‘My Work’ is empty',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins-SemiBold',
                    ),
                  ),
                  Text(
                    'Tasks that are assigned to you are shown here',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins-Light',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
