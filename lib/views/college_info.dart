import 'package:flutter/material.dart';
import 'package:skygoal_task/constants/custom_colors.dart';
import 'package:skygoal_task/constants/custom_text.dart';
import 'package:skygoal_task/views/about_college_tab.dart';
import 'package:skygoal_task/views/events_tab.dart';
import 'package:skygoal_task/views/hostel_tab.dart';
import 'package:skygoal_task/views/qna_tab.dart';

class CollegeInfo extends StatefulWidget {
  final String collegeName;
  const CollegeInfo({
    Key? key,
    required this.collegeName,
  }) : super(key: key);

  @override
  State<CollegeInfo> createState() => _CollegeInfoState();
}

class _CollegeInfoState extends State<CollegeInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
            child: AppBar(
              backgroundColor: CustomColors.blue(),
              flexibleSpace: Container(
                padding: const EdgeInsets.only(left: 40, top: 20, bottom: 20),
                alignment: Alignment.bottomLeft,
                child: Text(
                  widget.collegeName,
                  style: CustomTextClass.h1Bold(context, Colors.white),
                ),
              ),
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Image
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/pic4.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  //Text

                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                        horizontal: MediaQuery.of(context).size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.collegeName,
                              style:
                                  CustomTextClass.h1Bold(context, Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur ',
                              style:
                                  CustomTextClass.h3Bold(context, Colors.grey),
                              overflow: TextOverflow.fade,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur ',
                              style:
                                  CustomTextClass.h3Bold(context, Colors.grey),
                              overflow: TextOverflow.fade,
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur ',
                              style:
                                  CustomTextClass.h3Bold(context, Colors.grey),
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '4.3',
                                style: CustomTextClass.h3Bold(
                                    context, Colors.white),
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Tab Bar

                  TabBar(
                    indicatorColor: CustomColors.blue(),
                    tabs: [
                      Tab(
                        child: Text(
                          textAlign: TextAlign.center,
                          'About College',
                          style: CustomTextClass.h2Bold(
                            context,
                            CustomColors.blue(),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          textAlign: TextAlign.center,
                          'Hostel Facility',
                          style: CustomTextClass.h2Bold(
                            context,
                            CustomColors.blue(),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          textAlign: TextAlign.center,
                          'Q&A',
                          style: CustomTextClass.h2Bold(
                            context,
                            CustomColors.blue(),
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          textAlign: TextAlign.center,
                          'Events',
                          style: CustomTextClass.h2Bold(
                            context,
                            CustomColors.blue(),
                          ),
                        ),
                      )
                    ],
                  ),
                  //Tab Bar Views

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(children: [
                      const AboutCollegeTab(),
                      const HostelTab(),
                      QAndATab(),
                      EventsTab(),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
