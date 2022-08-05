import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skygoal_task/constants/custom_colors.dart';
import 'package:skygoal_task/constants/custom_text.dart';
import 'package:skygoal_task/widgets/hostel_bed.dart';

class HostelTab extends StatelessWidget {
  const HostelTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Bed Selector

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HostelBed(
                isSelected: true,
                bedNumber: '4',
              ),
              HostelBed(
                isSelected: false,
                bedNumber: '3',
              ),
              HostelBed(
                isSelected: false,
                bedNumber: '2',
              ),
              HostelBed(
                isSelected: false,
                bedNumber: '1',
              ),
            ],
          ),
          //Photos
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/hostel1.png'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/hostel2.png'),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/hostel3.png'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.19,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GHJK Engineering Hostel',
                  style: CustomTextClass.h2Bold(context, Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                  ' Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla '
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                  ' Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla '
                  ' Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla ',
                  style: CustomTextClass.h3Bold(context, Colors.grey),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Image.asset('assets/university 1.png'),
                title: Text(
                  'College in 400mtrs',
                  style: CustomTextClass.h2Bold(context, Colors.black),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/icon2.png'),
                title: Text(
                  'Bathrooms : 2',
                  style: CustomTextClass.h2Bold(context, Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
