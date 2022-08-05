import 'package:flutter/material.dart';
import 'package:skygoal_task/constants/custom_colors.dart';
import 'package:skygoal_task/constants/custom_text.dart';

class AboutCollegeTab extends StatelessWidget {
  const AboutCollegeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.01,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Description

            Text(
              'Description',
              style: CustomTextClass.h1Bold(context, Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan,'
              ' scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium '
              'varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. '
              'Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
              style: CustomTextClass.h3Bold(context, Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),

            //Location Map

            Text(
              'Location',
              style: CustomTextClass.h1Bold(context, Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/map.png'),
            const SizedBox(
              height: 20,
            ),

            //Student Review

            Text(
              'Student Review',
              style: CustomTextClass.h1Bold(context, Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset('assets/student1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset('assets/student2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset('assets/student3.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset('assets/student4.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  alignment: Alignment.center,
                  width: 70,
                  height: 50,
                  decoration: BoxDecoration(
                    color: CustomColors.blue(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '12+',
                    style: CustomTextClass.h2Bold(context, Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                  vertical: MediaQuery.of(context).size.height * 0.02),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
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
                    'Arun sai',
                    style: CustomTextClass.h2Bold(context, Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                    ' Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla '
                    'sit magna suscipit tellus malesuada in facilisis a.',
                    style: CustomTextClass.h3Bold(context, Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assets/stars.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                color: CustomColors.blue(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Apply Now',
                style: CustomTextClass.h1Bold(context, Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
