import 'package:cosmic_app/ui/myContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    bool switchStatus = false;
    int S_value = 100;
    bool isShowProgress = false;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/bg.png'))),
        child: Column(
          children: [
            MyContainer(
              Myheight: 100.0,
              Mywidth: double.infinity,
              mychild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.2)),
                        color: Colors.white24.withOpacity(0.17),
                        shape: BoxShape.circle),
                  ),
                  Text(
                    "Profile",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.person_2_outlined,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.2)),
                        color: Colors.white24.withOpacity(0.17),
                        shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: MyContainer(
                  Myheight: 100.0,
                  Mywidth: 350.0,
                  mychild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/p.png'),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 25),
                                child: Container(
                                  child: Text(
                                    'Talha \nSpace Adventurer',
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: MyContainer(
                  Myheight: 400.0,
                  Mywidth: 350.0,
                  mychild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: LiteRollingSwitch(
                              width: 100,

                              //initial value
                              value: switchStatus,
                              textOn: 'OFF',
                              textOff: 'ON',
                              colorOn: Color(0xff11DCE8),
                              colorOff: Color(0xff091522),
                              iconOn: Icons.done,
                              iconOff: Icons.remove_circle_outline,
                              textSize: 16.0,
                              onChanged: (bool state) {
                                setState(() {
                                  switchStatus = true;
                                });
                                //Use it to manage the different states
                                print('Current State of SWITCH IS: $state');
                              },
                              onTap: () {
                                setState(() {
                                  switchStatus = !switchStatus;
                                });
                              },
                              onDoubleTap: () {},
                              onSwipe: () {},
                            ),
                          ),
                          Text(
                            'Show Progress',
                            style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                            height: 300,
                            width: 300,
                            child: SimpleCircularProgressBar(
                              onGetText: (S_value) {
                                print(S_value);
                                return Text(
                                  '${S_value.toInt()}%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40),
                                );
                              },
                              backStrokeWidth: 20,
                              progressStrokeWidth: 20,
                              maxValue: 200,
                              size: 200,
                              mergeMode: true,
                            )),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
