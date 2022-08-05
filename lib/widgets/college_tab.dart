import 'package:flutter/material.dart';
import 'package:skygoal_task/constants/custom_text.dart';

class CollegeTab extends StatelessWidget {
  final String title;
  const CollegeTab({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.05,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        title,
        style: CustomTextClass.h2Bold(context, Colors.black),
      ),
    );
  }
}
