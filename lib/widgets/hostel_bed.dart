import 'package:flutter/material.dart';
import 'package:skygoal_task/constants/custom_colors.dart';

import '../constants/custom_text.dart';

class HostelBed extends StatelessWidget {
  final bool isSelected;
  final String bedNumber;

  const HostelBed({
    required this.isSelected,
    required this.bedNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      decoration: BoxDecoration(
        color: isSelected ? CustomColors.blue() : Colors.transparent,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: isSelected ? Colors.transparent : CustomColors.blue(),
          width: 2,
        ),
      ),
      width: 60,
      height: 30,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            'assets/bed.png',
            color: isSelected ? Colors.white : CustomColors.blue(),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            bedNumber,
            style: CustomTextClass.h2Bold(
              context,
              isSelected ? Colors.white : CustomColors.blue(),
            ),
          ),
        ],
      ),
    );
  }
}
