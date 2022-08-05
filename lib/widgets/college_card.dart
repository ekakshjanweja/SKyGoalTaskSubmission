import 'package:flutter/material.dart';

import '../constants/custom_colors.dart';
import '../constants/custom_text.dart';

class CollegeCard extends StatelessWidget {
  final String name;
  final String img;
  const CollegeCard({
    required this.img,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 8,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 116 * 2,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              fit: BoxFit.fitWidth,
              img,
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Text Column

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: CustomTextClass.h2Bold(
                        context,
                        Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur \n'
                      'adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                      style: CustomTextClass.h3Bold(
                        context,
                        Colors.grey,
                      ),
                    ),
                  ],
                ),

                //Button Column

                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Rating

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 40,
                      height: 30,
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '4.3',
                            style:
                                CustomTextClass.h3Bold(context, Colors.white),
                          ),
                          const Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Apply Now

                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: CustomColors.blue(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 60,
                      height: 30,
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        'Apply Now',
                        style: CustomTextClass.h3Bold(context, Colors.white),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            right: 40,
            child:
                //Bottom Row
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'More than 1000+ students have been placed',
                  style: CustomTextClass.h3Bold(
                    context,
                    Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.remove_red_eye,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '468+',
                      style: CustomTextClass.h3Bold(
                        context,
                        Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
