//import material.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_project/categories_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA259FF),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/splash_bg.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 63,
                height: 63,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                  color: Color(0xffF6F5F5),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/images/box.png',
                      width: 70,
                      height: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Text('Non-Contact Deliveries',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff2D0C57))),
                    ),
                    Text(
                      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Color(0xff9586A8),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff0BCE83),
                            minimumSize: Size(double.infinity, 47)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext c) =>
                                      CategoriesPage()));
                        },
                        child: Text(
                          'ORDER NOW',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffF6F5F5),
                            elevation: 0,
                            minimumSize: Size(double.infinity, 50)),
                        onPressed: () {},
                        child: Text(
                          'DISMISS',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff9586A8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
