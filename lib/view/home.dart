import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Animate(
            effects: const [
              FadeEffect(duration: Duration(seconds: 2), curve: Curves.easeIn)
            ],
            child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * 0.2, left: size.width * 0.05),
                        child: Text(
                          'Booky',
                          style: GoogleFonts.robotoCondensed(
                            color: Colors.lightGreen,
                            fontSize: 50,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.3),
                            child: Text.rich(
                              TextSpan(
                                  text: 'Your book library',
                                  style: GoogleFonts.robotoCondensed(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w300),
                                  children: [
                                    TextSpan(
                                        text: '\n at the office',
                                        style: GoogleFonts.robotoCondensed(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w300))
                                  ]),
                              textAlign: TextAlign.center,
                              key: const Key('text-rich'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                            key: const Key('login'),
                            onPressed: () {
                              Get.toNamed('/Logins');
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 238, 233, 233)),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                            key: const Key('regis'),
                            onPressed: () {
                              Get.toNamed('/Regis');
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.green),
                            )),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'Assets/image/Group.png',
                            height: 220,
                            width: 220,
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
