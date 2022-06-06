import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VegetablePage extends StatefulWidget {
  const VegetablePage({Key? key}) : super(key: key);

  @override
  State<VegetablePage> createState() => _VegetablePageState();
}

class _VegetablePageState extends State<VegetablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Image.asset(
                    'assets/images/vegetables.png',
                    width: 170,
                    height: 170,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SvgPicture.asset('assets/icons/arrow.svg')),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Vegetables',
                    style: GoogleFonts.poppins(
                        fontSize: 34, color: Color(0xff2D0C57)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.3), width: 1),
                          borderRadius: BorderRadius.circular(27),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(27),
                        ),
                        prefixIconConstraints: const BoxConstraints(),
                        contentPadding: const EdgeInsets.all(10),
                        hintText: 'Search',
                        fillColor: Colors.white,
                        filled: true,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 17, color: Color(0xff9586A8)),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              'assets/icons/search.svg',
                            ),
                          ),
                        ),
                        isDense: true),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/images/selected1.png',
                        width: 200,
                        height: 34,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/images/unselected1.png',
                        width: 200,
                        height: 34,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                        (index) => Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  'assets/images/unselecetd2.png',
                                  width: 200,
                                  height: 34,
                                ),
                              ],
                            )),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (BuildContext c, int i) {
                    return Row(
                      children: [
                        Image.asset(
                          'assets/images/boston.png',
                          width: 177,
                          height: 128,
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
