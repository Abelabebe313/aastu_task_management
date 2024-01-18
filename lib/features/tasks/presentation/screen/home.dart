import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/completedtask_widget.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/uncompletedtask_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final List<Widget> TasksType = [UncompletedTask(), const CompletedTask()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Ionicons.menu,
          color: Color(0xff2C2A3E),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.notifications_outline,
              color: Color(0xff2C2A3E),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                right: 25,
                left: 25,
                bottom: 0,
              ),
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 242, 242),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Expanded(
                child: TextField(
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    color: Color(0xff6F7277),
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins-Medium',
                      color: Color(0xff6F7277),
                      fontSize: 14,
                    ),
                    prefixIcon: Icon(Icons.search, color: Color(0xff6F7277)),
                    contentPadding: EdgeInsets.only(
                        left: 10, top: 12, bottom: 15), // Add padding here
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Complete and uncomplete Task Toggler
            Center(
              child: Container(
                width: 315,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff2C2A3E),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: (activeIndex == 0) ? 145 : 132,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: (activeIndex == 0) ? Colors.white : null,
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            activeIndex = 0;
                          });
                        },
                        child: Text(
                          'Task List',
                          style: TextStyle(
                            color: (activeIndex == 0)
                                ? Color(0xffA88231)
                                : Colors.white,
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: (activeIndex == 1) ? 145 : 132,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: (activeIndex == 1) ? Colors.white : null,
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            activeIndex = 1;
                          });
                        },
                        child: Text(
                          'Completed',
                          style: TextStyle(
                            color: (activeIndex == 1)
                                ? Color(0xffA88231)
                                : Colors.white,
                            fontFamily: 'Poppins-Medium',
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: TasksType[activeIndex],
            ),
          ],
        ),
      ),
      
    );
  }
}
