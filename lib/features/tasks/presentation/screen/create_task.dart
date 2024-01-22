import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/Text_input_field.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController titleController = TextEditingController();
  TextEditingController tagsController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  List<String> tags = [
    "Today",
    "Next",
  ];
  void addTag() {
    String tag = tagsController.text.toLowerCase();
    if (tag.isNotEmpty && !tags.contains(tag)) tags.add(tag);
    print(tags);
    setState(() {});
    tagsController.clear();
  }

  void removeTag(int index) {
    tags.removeAt(index);
    setState(() {});
  }

  List<String> getTags() {
    return tags;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Task',
          style: TextStyle(
            fontFamily: 'Poppins-SemiBold',
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Task Title',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  TextInputField(
                    label: "Add Task Name",
                    controller: titleController,
                    box_width: 300,
                    box_height: 50,
                    line: 1,
                    textSize: 14,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Ionicons.person_add_outline,
                      color: buttonColor,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // ===== Task Time and Date =====
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Time & Date',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Ionicons.calendar_outline,
                      color: textColor2,
                      size: 32,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add Date',
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 15,
                        color: textColor2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // ===== Task Category =====
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Category',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: TextInputField(
                          label: "Add Category",
                          controller: tagsController,
                          box_height: 45,
                          box_width: 300,
                          line: 1,
                          textSize: 14,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      // radius: 12,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Ionicons.add_circle_outline,
                          size: 32,
                        ),
                        color: buttonColor,
                        onPressed: addTag,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Add as many tags as you want",
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor2,
                      fontFamily: 'Poppins-Light',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Wrap(
                    spacing: 5,
                    // add vertical spacing here
                    runSpacing: 5,
                    children: [
                      ...[for (var i = 0; i < tags.length; i++) generateChip(i)]
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            // ===== Task Description =====
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Description',
                style: TextStyle(
                  fontFamily: 'Poppins-SemiBold',
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: TextInputField(
                label: "Add Description",
                controller: descriptionController,
                box_width: MediaQuery.of(context).size.width * 0.9,
                box_height: 200,
                line: 10,
                textSize: 14,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            // ===== Task Creation Button =====
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(350, 40),
                  primary: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  'Create Task',
                  style: TextStyle(
                    fontFamily: 'Poppins-SemiBold',
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  // === Custome chip generator ===
  Container generateChip(int index) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Chip(
        deleteIconColor: textColor1,
        label: Text(
          tags[index],
          style: const TextStyle(
            color: textColor1,
            fontSize: 12,
            fontFamily: 'Poppins-Regular',
          ),
        ),
        backgroundColor: Colors.white,
        shape: const StadiumBorder(
          side: BorderSide(
            color: textColor2,
            width: 1,
          ),
        ),
        onDeleted: () {
          // Handle delete action
          removeTag(index);
        },
      ),
    );
  }
}
