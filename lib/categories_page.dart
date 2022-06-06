import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_project/vegetable_page.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: SvgPicture.asset(
            'assets/icons/arrow.svg',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Categories',
                style:
                    GoogleFonts.poppins(fontSize: 34, color: Color(0xff2D0C57)),
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
                      borderRadius: BorderRadius.circular(27),
                    ),
                    prefixIconConstraints: const BoxConstraints(),
                    contentPadding: const EdgeInsets.all(10),
                    hintText: 'Search',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
                children: List.generate(
                    6,
                    (index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext c) =>
                                        VegetablePage()));
                          },
                          child: Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/food${++index}.png',
                                    height: 120,
                                    width: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Text(
                                      'Vegetables',
                                      style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2D0C57)),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Text(
                                      '(43)',
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: Color(0xff9586A8)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  )
                                ]),
                          ),
                        )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
