import 'dart:ui';

import 'package:cosmic_app/ui/innerPage.dart';
import 'package:cosmic_app/ui/myContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> MySolorSystem = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
  ];
  List<String> MYInfo = [
    'The smallest planet in our solar system, Mercury is\n also the closest to the Sun.',
    'Often referred to as Earths twin, Venus is shrouded \nin a thick atmosphere of carbon dioxide, ',
    'Our home planet, Earth is the only planet known to \nsupport life as we know it.',
    'The fourth planet from the Sun, Mars is known for its\n reddish hue due to the presence of iron oxide',
    'The largest planet in our solar system by a wide margin,\n Jupiter is a swirling mass of gas and clouds.',
    'Easily recognizable by its spectacular system of rings made \nof ice and rock particles, Saturn is another',
    'Uranus is an ice giant, composed mainly of water, methane,\n and ammonia.It has a unique tilt on its axis,',
    'The farthest planet from the Sun, Neptune is another ice\n giant with a blue appearance.It has strong winds',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/bg.png'))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SafeArea(
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
                            Icons.menu,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.2)),
                              color: Colors.white24.withOpacity(0.17),
                              shape: BoxShape.circle),
                        ),
                        Text(
                          "Solar System",
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
                              border: Border.all(
                                  color: Colors.white.withOpacity(0.2)),
                              color: Colors.white24.withOpacity(0.17),
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 50,
                      width: double.infinity,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: MySolorSystem.length,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          InnerPage()));
                                },
                                child: MyContainer(
                                    Myheight: 40.0,
                                    Mywidth: 100.0,
                                    mychild: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            MySolorSystem[index].toString(),
                                            style: GoogleFonts.aBeeZee(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                      ],
                                    ))),
                              ),
                            );
                          })),
                  Container(
                    height: 580,
                    width: 350,
                    child: ListView.builder(
                        itemCount: MySolorSystem.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: MyContainer(
                                Myheight: 200.0,
                                Mywidth: double.infinity,
                                mychild: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20),
                                      child: Text(
                                        ' ${MySolorSystem[index].toString()}',
                                        style: GoogleFonts.aBeeZee(
                                            color: Color(0xff11DCE8),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                    Divider(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text(
                                        MYInfo[index].toString(),
                                        style: GoogleFonts.aBeeZee(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                )),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
