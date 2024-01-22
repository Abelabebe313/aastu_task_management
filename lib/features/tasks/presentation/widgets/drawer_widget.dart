import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: textColor1,
                  child: Text(
                    'A',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins-Light',
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'Abel Abebe',
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.settings_outline,
                    color: selectedColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
