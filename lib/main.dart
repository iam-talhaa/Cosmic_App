import 'package:cosmic_app/ui/Splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Cosmic());
}

class Cosmic extends StatefulWidget {
  const Cosmic({super.key});

  @override
  State<Cosmic> createState() => _CosmicState();
}

class _CosmicState extends State<Cosmic> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
