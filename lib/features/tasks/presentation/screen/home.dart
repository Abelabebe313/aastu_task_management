import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/drawer_widget.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/empty_mywork_widget.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/search_widget.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/task_grid_card_widget.dart';
import 'package:task_managment_aastu/features/tasks/presentation/widgets/task_list_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tags = ["All", "Today", "No due date ", "Next", "Overdue"];
  int _currentPage = 0;
  int recent_layout_choice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      drawer: DrawerScreen(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ============== My Work section ==================== //
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'My Work',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins-SemiBold',
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tags.length,
                        itemBuilder: (ctx, index) {
                          return Container(
                            constraints: const BoxConstraints(minWidth: 70),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 18.5,
                            ),
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? buttonColor
                                  : comp_backgroundColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _currentPage = index;
                                });
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 3, right: 3),
                                child: Text(
                                  tags[index],
                                  style: TextStyle(
                                    color: _currentPage == index
                                        ? Colors.white
                                        : textColor1,
                                    fontSize: 11.5,
                                    fontFamily: 'Poppins-Regular',
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  // shows empty widget if the the is no work created
                  const EmptyMyWorkWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // ============== Recent section ==================== //
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Recents',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins-SemiBold',
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            recent_layout_choice = 0;
                          });
                        },
                        icon: Icon(
                          Icons.grid_view,
                          color: recent_layout_choice == 0
                              ? selectedColor
                              : textColor2,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            recent_layout_choice = 1;
                          });
                        },
                        icon: Icon(
                          Icons.list,
                          color: recent_layout_choice == 1
                              ? selectedColor
                              : textColor2,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Grid - View
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: recent_layout_choice == 0
                        ? GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                            ),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 190,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color: borderColor,
                                  ),
                                ),
                                child: TaskGridCardWidget(
                                  title: 'Research Evaluation',
                                  date: 'Jan 20 2024',
                                  collaboration: 2,
                                ),
                              );
                            },
                          )
                        : ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return const TaskListCardWidget(
                                title: 'Research Evaluation',
                                date: 'Jan 20 2024',
                                collaboration: 3,
                              );
                            },
                          ),
                  ),

                  // List - view
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.3,
                  //   child: ListView.builder(
                  //     itemCount: 6,
                  //     itemBuilder: (context, index) {
                  //       return const TaskListCardWidget(
                  //         title: 'Research Evaluation',
                  //         date: 'Jan 20 2024',
                  //         collaboration: 3,
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // ============== Favorite section ==================== //
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Favorite',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins-SemiBold',
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.grid_view,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.list,
                          color: selectedColor,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return const TaskListCardWidget(
                          title: 'Meeting with the Team',
                          date: 'Mar 10 2024',
                          collaboration: 3,
                        );
                      },
                    ),
                  ),
                ],
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
}
