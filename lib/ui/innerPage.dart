import 'package:cosmic_app/ui/favourite.dart';
import 'package:cosmic_app/ui/myContainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InnerPage extends StatefulWidget {
  const InnerPage({super.key});

  @override
  State<InnerPage> createState() => _InnerPageState();
}

class _InnerPageState extends State<InnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/nb.png'))),
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                  Color(0xff11DCE8).withOpacity(0.15),
                  Color(0xff72A5F2).withOpacity(0.6),
                  Color(0xffE961FF).withOpacity(0.1),
                ])),
            child: Column(
              children: [
                MyContainer(
                  Myheight: 70.0,
                  Mywidth: double.infinity,
                  mychild: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Favourite()));
                          },
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2)),
                                color: Colors.white24.withOpacity(0.17),
                                shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Image(image: AssetImage('images/p.png')),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: MyContainer(
                      Myheight: 380.0,
                      Mywidth: double.infinity,
                      mychild: Column(
                        children: [
                          Text(
                            "Earth",
                            style: GoogleFonts.aBeeZee(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage('images/mass.png')),
                                      Text(
                                        'Mass',
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '5.97',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage('images/mag.png')),
                                      Text(
                                        'Gravity',
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '9.8',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage('images/sun.png')),
                                      Text(
                                        'Day',
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '24',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage('images/vel.png')),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Velocity',
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '11.2',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage('images/temp.png')),
                                      Text(
                                        'Mean\nTemp C',
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '15',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image(
                                          image: AssetImage('images/dis.png')),
                                      Text(
                                        'Distance\n(106km)  ',
                                        style: GoogleFonts.aBeeZee(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        '5.9',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
