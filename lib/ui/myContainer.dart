import 'dart:ui';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Myheight;
  final Mywidth;
  final mychild;

  const MyContainer(
      {super.key,
      required this.Myheight,
      required this.Mywidth,
      required this.mychild});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Myheight,
      width: Mywidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: Myheight,
            width: Mywidth,
            decoration: BoxDecoration(color: Colors.transparent),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 4.0,
                    sigmaY: 4.0,
                  ),
                  child: Container(),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white.withOpacity(0.13)),
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.19)
                      ])),
                ),
                Container(
                  height: Myheight,
                  width: Mywidth,
                  child: mychild,
                )
              ],
            ),
          )),
    );
  }
}
