import 'package:flutter/material.dart';
class TaskCardWidget extends StatelessWidget {
  const TaskCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      margin: const EdgeInsets.only(
        top: 5,  
        right: 25,
        left: 25,
        bottom: 5
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 242, 242),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_box_outline_blank,
              color: Color(0xff2C2A3E),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Meeting with client',
                style: TextStyle(
                  color: Color(0xff2C2A3E),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 16,
                ),
              ),
              Text(
                '12:00 am',
                style: TextStyle(
                  color: Color(0xff2C2A3E),
                  fontFamily: 'Poppins-ExtraLight',
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_outlined,
              color: Color(0xffA88231),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
