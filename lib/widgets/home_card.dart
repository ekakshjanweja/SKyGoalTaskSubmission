// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String assetName;
  final Function() onTap;
  const HomeCard({
    Key? key,
    required this.assetName,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height * 0.1706,
        child: Stack(
          children: [
            Image.asset(
              assetName,
              width: MediaQuery.of(context).size.width * 0.87,
            ),
          ],
        ),
      ),
    );
  }
}
