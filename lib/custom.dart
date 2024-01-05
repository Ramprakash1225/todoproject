import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoproject/bottom.dart';

class MyImage {
  final String imagePath;
  final String name;

  MyImage({
    required this.imagePath,
    required this.name,
  });
}

class Loginpage extends StatelessWidget {
  Loginpage({Key? key}) : super(key: key);

  final List<MyImage> imageList = [
    MyImage(
      imagePath: "assets/Frame 8.png",
      name: "Pizza",
    ),
    MyImage(
      imagePath: "assets/Frame 8 (1).png",
      name: "Burger",
    ),
    MyImage(
      imagePath: "assets/Frame 8 (1).png",
      name: "Healthy",
    ),
    MyImage(
      imagePath: "assets/Frame 8 (1).png",
      name: "Noodles",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xffFA6A02),
                        size: 20,
                      ),
                      Text(
                        "office",
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: Color(0xff9F9F9F),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(
                      "38/A, 3rd Floor, 18th Main, 22nd C",
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Frame 7.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Get 50% off on your.",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "first order.",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: 85,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xffFA6A02),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "Order Now",
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Color(0xffFA6A02),
                      ),
                      suffixIcon: const Icon(
                        Icons.menu,
                        size: 30,
                        color: Color(0xff9F9F9F),
                      ),
                      hintText: "Restaurant name or a dish..",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 6.5,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffE1E1E1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(imageList[index].imagePath),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                imageList[index].name,
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff666464),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    "Restaurant near you",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20.0,
                        ), // Adjust the bottom padding as needed
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/Frame 10.png",
                                  height: 157,
                                  width: 132,
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Domino’s Pizza",
                                      style: GoogleFonts.openSans(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.2",
                                          style: GoogleFonts.openSans(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        const Icon(Icons.star,
                                            size: 15, color: Color(0xffFA6A02)),
                                        const SizedBox(width: 3),
                                        Text(
                                          "(10k+)",
                                          style: GoogleFonts.openSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          "25 mins",
                                          style: GoogleFonts.openSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Pizzas, Italian, Pastas ",
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff666464),
                                      ),
                                    ),
                                    Text(
                                      "Pimple Saudagar ",
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff666464),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "FREE DELIVERY",
                                      style: GoogleFonts.openSans(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff11CF24),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const Positioned(
                              top: 0,
                              right: 0,
                              child: Icon(Icons.more_vert),
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
        ]),
      ),
    );
  }
}
