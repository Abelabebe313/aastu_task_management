import 'package:flutter/material.dart';
import 'package:task_managment_aastu/core/utils/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        right: 25,
        left: 25,
        bottom: 0,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: comp_backgroundColor,
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
    );
  }
}
