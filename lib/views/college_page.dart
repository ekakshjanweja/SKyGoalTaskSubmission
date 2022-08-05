import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skygoal_task/constants/custom_colors.dart';
import 'package:skygoal_task/constants/custom_text.dart';
import 'package:skygoal_task/views/college_info.dart';
import 'package:skygoal_task/widgets/college_card.dart';
import 'package:skygoal_task/widgets/college_tab.dart';

class CollegePage extends StatefulWidget {
  const CollegePage({Key? key}) : super(key: key);

  @override
  State<CollegePage> createState() => _CollegePageState();
}

class _CollegePageState extends State<CollegePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 2,
          child: Column(
            children: [
              //Upper Stack

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.0864,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  color: CustomColors.blue(),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    //Heading

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0529,
                      child: Text(
                        'Find your own way',
                        style: CustomTextClass.h1Bold(context, Colors.white),
                      ),
                    ),

                    //Sub Heading

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0948,
                      child: Text(
                        'Search in 600 colleges around!',
                        style: CustomTextClass.h2Bold(context, Colors.white),
                      ),
                    ),

                    //Notification Icon

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.0476,
                      right: 0,
                      child: SvgPicture.asset(
                        'assets/notification.svg',
                      ),
                    ),

                    //Search Bar

                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.1566,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: MediaQuery.of(context).size.height * 0.0572,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Icon(Icons.search),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child:
                                      Text('Search for colleges, schools.....'),
                                ),
                              ],
                            ),
                          ),

                          //Mic Icon
                          Container(
                            width: MediaQuery.of(context).size.width * 0.12,
                            height: MediaQuery.of(context).size.height * 0.0572,
                            margin: const EdgeInsets.only(left: 15),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: SvgPicture.asset(
                              'assets/mic.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //Upper Row

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CollegeTab(title: 'MVSH Engineering college'),
                    CollegeTab(title: 'MVSH Engineering college'),
                    CollegeTab(title: 'MVSH Engineering college'),
                    CollegeTab(title: 'MVSH Engineering college'),
                    CollegeTab(title: 'MVSH Engineering college'),
                    CollegeTab(title: 'MVSH Engineering college'),
                    CollegeTab(title: 'Lerem Ispsum'),
                  ],
                ),
              ),

              //Colleges

              Container(
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.001,
                ),
                height: MediaQuery.of(context).size.height * 0.54,
                width: 354,
                child: ListView(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollegeInfo(
                            collegeName: 'GHJK Engineering college',
                          ),
                        ),
                      ),
                      child: const CollegeCard(
                        img: 'assets/pic.png',
                        name: 'GHJK Engineering college',
                      ),
                    ),
                    const CollegeCard(
                      img: 'assets/pic2.png',
                      name: 'GHJK Engineering college',
                    ),
                    const CollegeCard(
                      img: 'assets/pic3.png',
                      name: 'GHJK Engineering college',
                    ),
                    const CollegeCard(
                      img: 'assets/pic2.png',
                      name: 'GHJK Engineering college',
                    ),
                    const CollegeCard(
                      img: 'assets/pic.png',
                      name: 'GHJK Engineering college',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: CustomColors.blue(),
              activeIcon: SvgPicture.asset(
                'assets/home.svg',
                color: Colors.white,
              ),
              icon: SvgPicture.asset(
                'assets/home.svg',
                color: Colors.grey,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: CustomColors.blue(),
              activeIcon: SvgPicture.asset(
                'assets/save.svg',
                color: Colors.white,
              ),
              icon: SvgPicture.asset('assets/save.svg'),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              backgroundColor: CustomColors.blue(),
              activeIcon: SvgPicture.asset(
                'assets/save.svg',
                color: Colors.white,
              ),
              icon: SvgPicture.asset('assets/save.svg'),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              backgroundColor: CustomColors.blue(),
              activeIcon: SvgPicture.asset(
                'assets/acc.svg',
                color: Colors.white,
              ),
              icon: SvgPicture.asset('assets/acc.svg'),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
