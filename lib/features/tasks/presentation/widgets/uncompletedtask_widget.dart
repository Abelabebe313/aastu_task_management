import 'package:flutter/material.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/task_card_widget.dart';
class UncompletedTask extends StatefulWidget {
  const UncompletedTask({super.key});

  @override
  State<UncompletedTask> createState() => _UncompletedTaskState();
}

class _UncompletedTaskState extends State<UncompletedTask> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TaskCardWidget(),
          TaskCardWidget(),
          TaskCardWidget(),
        ],
      ),
    );
  }
}

