import 'package:cosmic_app/ui/myContainer.dart';
import 'package:cosmic_app/ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
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
    'The smallest planet in our\n solar system, Mercury is\n also the closest to the Sun\n.',
    'Often referred to as Earth\n twin, Venus is shrouded \nin a thick atmosphere of \ncarbon dioxide, ',
    'Our home planet, Earth is \nthe only planet known to \nsupport life as we know it\n.',
    'The fourth planet from the\n Sun, Mars is known for its\n reddish hue due to the \npresence of iron oxide',
    'The largest planet in our \nsolar system by a wide margin,\n Jupiter is a swirling\n mass of gas and clouds.',
    'Easily recognizable by its\n spectacular system of \nrings made of ice and rock ',
    'Uranus is an ice giant, \ncomposed mainly of water, \nmethane, and ammonia.It has ',
    'The farthest planet from \nthe Sun, Neptune is another ice\n giant with a blue \nappearance.It has strong winds',
  ];
  @override
  Widget build(BuildContext context) {
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
                      Icons.menu,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.white.withOpacity(0.2)),
                        color: Colors.white24.withOpacity(0.17),
                        shape: BoxShape.circle),
                  ),
                  Text(
                    "Favourite",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Profile()));
                    },
                    child: Container(
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
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 1,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: MyContainer(
                            Myheight: 150.0,
                            Mywidth: 300.0,
                            mychild: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Text(
                                    MySolorSystem[index].toString(),
                                    style: GoogleFonts.aBeeZee(
                                        color: Color(0xff11DCE8),
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        child: Image(
                                            height: 100,
                                            width: 100,
                                            image: AssetImage('images/p.png'))),
                                    Text(
                                      MYInfo[index].toString(),
                                      style: GoogleFonts.aBeeZee(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            )),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
