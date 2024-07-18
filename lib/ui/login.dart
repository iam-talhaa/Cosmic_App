import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/bg.png'))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image(image: AssetImage('images/p.png')),
              TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: Colors.black.withOpacity(0.6),
                  hoverColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.black.withOpacity(0.6),
                  filled: true,
                  focusColor: Colors.white,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.white,
                          width: 2),
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Forgot Password",
                    style: GoogleFonts.abel(
                        color: Color(0xff11DCE8), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff00E5E5),
                          Color(0xff72A5F2),
                          Color(0xffE961FF)
                        ]),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.nokora(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                height: 2,
              ),
              Row(
                children: [
                  Icon(
                    Icons.facebook_outlined,
                    color: Colors.blue[400],
                  ),
                  Icon(
                    Icons.facebook_outlined,
                    color: Colors.blue[400],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
