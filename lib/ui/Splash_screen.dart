import 'package:cosmic_app/services/Splash_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.ISLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('images/bg.png')),
        ),
        child: Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 250,
              left: 80,
              child: Container(
                child: SimpleCircularProgressBar(
                  backStrokeWidth: 20,
                  progressStrokeWidth: 20,
                  maxValue: 200,
                  size: 200,
                  mergeMode: true,
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 110,
              child: Center(
                child: Text(
                  'Cosmic',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
