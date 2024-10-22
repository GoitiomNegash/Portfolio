import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/bottom_nav.dart';
import 'package:portfolio/pages/nav_bar_copy.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WorksPage extends StatefulWidget {
  const WorksPage({super.key});

  @override
  State<WorksPage> createState() => _WorksPageState();
}

class _WorksPageState extends State<WorksPage> {
  int activeIndex = 0;
  final List<String> bookingMockups = [
    'works/Booking/1.png',
    'works/Booking/2.png',
    'works/Booking/3.png',
    'works/Booking/4.png',
    'works/Booking/5.png',
    'works/Booking/6.png',
    'works/Booking/7.png',
    'works/Booking/8.png'
  ];
  final List<String> eHotelMockups = [
    'works/eHotel/CuSignup.png',
    'works/eHotel/customers.png',
    'works/eHotel/dashboard.jpg',
    'works/eHotel/hotels.jpg',
    'works/eHotel/HSignup.png',
    'works/eHotel/SignIn.png',
  ];
  final List<String> nileJobsMockups = [
    'works/NileJobs/signIn.png',
    'works/NileJobs/signInCode.png',
    'works/NileJobs/seekerHomePage.png',
    'works/NileJobs/scrapingSampleCode.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          NavBar(onPress: (int) {}, selected: 2),
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(left: width * 0.1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Recent Works.",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 3,
                                width: 100,
                                color: Colors.green,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text.rich(TextSpan(
                                  text: "# I Have participated in different ",
                                  children: [
                                    TextSpan(
                                        text: "Web",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 3,
                                            // decorationColor: Colors.white,
                                            color: Colors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(text: " and "),
                                    TextSpan(
                                        text: "mobile app",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 3,
                                            // decorationColor: Colors.white,
                                            color: Colors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            " development projects.\n\n# Some of the recent projects among those I had been participated on are the following:\n\n# In almost all the projects listed bellow my involvement spanned both in the "),
                                    TextSpan(
                                        text: "Front End",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 3,
                                          // decorationColor: Colors.white,
                                          color: Colors.green,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    TextSpan(text: " and "),
                                    TextSpan(
                                        text: "Back End",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 3,
                                            // decorationColor: Colors.white,
                                            color: Colors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            " developments Showcasing my balanced skill sets."),
                                  ])),
                            ],
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 30,
                      // ),
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Wrap(
                                spacing: 40,
                                runSpacing: 100,
                                children: [
                                  Container(
                                    width:
                                        400, //MediaQuery.of(context).size.width * 0.25,
                                    //
                                    // height: 350,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 7,
                                              spreadRadius: 5),
                                        ],
                                        color: Colors.grey.shade100,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "# Flight Booking Mobile Application ",
                                            style: TextStyle(
                                                // decoration:
                                                //     TextDecoration.underline,
                                                // decorationThickness: 2,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                              "# Flight booking mobile Application developed with flutter Framework.\n\n# The flight booking application is a software platform or mobile application that allows users to search, compare, and book flights for travel using their mobile phone.\n\n# This application will typically provide a user-friendly interface where travelers can input their travel preferences, such as departure and arrival locations, dates, number of passengers, and class of service.\n\n# The following are some of the Mockup designs of the app."),
                                          const Divider(),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff000035),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: CarouselSlider.builder(
                                                  itemCount:
                                                      bookingMockups.length,
                                                  itemBuilder: (context, index,
                                                      realIndex) {
                                                    final imageUrl =
                                                        bookingMockups[index];
                                                    return buildImage(
                                                        imageUrl, index, width);
                                                  },
                                                  options: CarouselOptions(
                                                      height: 300,
                                                      autoPlay: true,
                                                      reverse: true,
                                                      enlargeCenterPage: true,
                                                      // scrollDirection: Axis.vertical,

                                                      autoPlayAnimationDuration:
                                                          const Duration(
                                                              seconds: 2),
                                                      onPageChanged: (index,
                                                              reason) =>
                                                          setState(() {
                                                            activeIndex = index;
                                                          }))),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(children: [
                                            const Expanded(
                                                flex: 1,
                                                child: SizedBox(
                                                  width: 5,
                                                )),
                                            Expanded(
                                                flex: 4,
                                                child: buildIndicator(
                                                    activeIndex, eHotelMockups))
                                          ]),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Text(
                                            "# Technologies Applied ",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationThickness: 2,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "Front End: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: "Flutter",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "Back End: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: "Firebase",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "Version Control: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: "Git and Github",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "UI/UX design tool: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: "Figma",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        350, // MediaQuery.of(context).size.width * 0.25,
                                    //
                                    // height: 350,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 7,
                                              spreadRadius: 5),
                                        ],
                                        color: Colors.grey.shade100,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "# E-Hotel Web - Application ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green),
                                            ),
                                            const Text(
                                              "# E-hotel is a system in which registered customers can get menu of hotels around online. \n\n# In this system, registered hotels post their menu and add or delete services to or from an existing menu online.\n\n# Local community and travelers can easily get menus and other services of hotels online.\n\n# The following are some of the screen shoots of the pages of the web application.",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            const Divider(),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xff000035),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: CarouselSlider.builder(
                                                    itemCount:
                                                        eHotelMockups.length,
                                                    itemBuilder: (context,
                                                        index, realIndex) {
                                                      final imageUrl =
                                                          eHotelMockups[index];
                                                      return buildImage(
                                                          imageUrl,
                                                          index,
                                                          width);
                                                    },
                                                    options: CarouselOptions(
                                                        height: 300,
                                                        // aspectRatio: 64 / 36,
                                                        // viewportFraction: 0.8,
                                                        autoPlay: true,
                                                        reverse: false,
                                                        enlargeCenterPage: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        autoPlayAnimationDuration:
                                                            const Duration(
                                                                seconds: 2),
                                                        onPageChanged:
                                                            (index, reason) =>
                                                                setState(() {
                                                                  activeIndex =
                                                                      index;
                                                                }))),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(children: [
                                              const Expanded(
                                                  flex: 1,
                                                  child: SizedBox(
                                                    width: 5,
                                                  )),
                                              Expanded(
                                                  flex: 4,
                                                  child: buildIndicator(
                                                      activeIndex,
                                                      eHotelMockups))
                                            ]),
                                            // buildIndicator(
                                            //     activeIndex, eHotelMockups),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            const Text(
                                              "# Technologies Applied ",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationThickness: 2,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green),
                                            ),
                                            const Text.rich(
                                              TextSpan(
                                                  text: "Front End: ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                  children: [
                                                    TextSpan(
                                                      text: "React Js",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                            ),
                                            const Text.rich(
                                              TextSpan(
                                                  text: "Back End: ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          "Node Js/Firebase Database",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                            ),
                                            const Text.rich(
                                              TextSpan(
                                                  text: "Version Control: ",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.green),
                                                  children: [
                                                    TextSpan(
                                                      text: "Git and Github",
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          color: Colors.black),
                                                    ),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        400, //MediaQuery.of(context).size.width * 0.25,
                                    //
                                    // height: 350,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              blurRadius: 7,
                                              spreadRadius: 5),
                                        ],
                                        color: Colors.grey.shade100,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "# Job Portal System Web based ",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                          const Text(
                                              "*The Nile Jobs, Online Job Portal System is a web based application to be used by agencies to improve the"
                                              " efficiency of business. \n\n*Gives a greater benefit for both the job seekers"
                                              " and recruiting companies. \n\n*The system provides job catalog and information to job seekers and helps them"
                                              " decide on the jobs to apply. \n\n*The admin can keep the jobs catalog updated all the time so that the members"
                                              "(Job seekers and agencies) get the updated information all the time."),
                                          const Divider(),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: const Color(0xff000035),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: CarouselSlider.builder(
                                                  itemCount:
                                                      nileJobsMockups.length,
                                                  itemBuilder: (context, index,
                                                      realIndex) {
                                                    final imageUrl =
                                                        nileJobsMockups[index];
                                                    return buildImage(
                                                        imageUrl, index, width);
                                                  },
                                                  options: CarouselOptions(
                                                      height: 300,
                                                      autoPlay: true,
                                                      reverse: true,
                                                      enlargeCenterPage: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      autoPlayAnimationDuration:
                                                          const Duration(
                                                              seconds: 2),
                                                      onPageChanged: (index,
                                                              reason) =>
                                                          setState(() {
                                                            activeIndex = index;
                                                          }))),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(children: [
                                            const Expanded(
                                                flex: 1,
                                                child: SizedBox(
                                                  width: 5,
                                                )),
                                            Expanded(
                                                flex: 4,
                                                child: buildIndicator(
                                                    activeIndex, eHotelMockups))
                                          ]),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          const Text(
                                            "# Technologies Applied ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationThickness: 2,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "Front End: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: "React Js",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "Back End: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        "Node Js/Firebase Database",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          ),
                                          const Text.rich(
                                            TextSpan(
                                                text: "Version Control: ",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                                children: [
                                                  TextSpan(
                                                    text: "Git and Github",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color: Colors.black),
                                                  ),
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   width:
                                  //       300, //MediaQuery.of(context).size.width * 0.25,
                                  //   //
                                  //   // height: 350,
                                  //   decoration: const BoxDecoration(
                                  //       color: Color(0xff000042),
                                  //       borderRadius: BorderRadius.all(
                                  //           Radius.circular(20))),
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.all(15.0),
                                  //     child: Column(children: [
                                  //       const Text(
                                  //         "Mockup designes of  a Flight booking mobile Application developed entirely with flutter frame work",
                                  //         style: TextStyle(color: Colors.white),
                                  //       ),
                                  //       const Divider(),
                                  //       Container(
                                  //         decoration: BoxDecoration(
                                  //             color: const Color(0xff000035),
                                  //             borderRadius:
                                  //                 BorderRadius.circular(10)),
                                  //         child: Padding(
                                  //           padding: const EdgeInsets.all(8.0),
                                  //           child: CarouselSlider.builder(
                                  //               itemCount: eHotelMockups.length,
                                  //               itemBuilder: (context, index,
                                  //                   realIndex) {
                                  //                 final imageUrl =
                                  //                     eHotelMockups[index];
                                  //                 return buildImage(
                                  //                     imageUrl, index, width);
                                  //               },
                                  //               options: CarouselOptions(
                                  //                   height: 300,
                                  //                   autoPlay: true,
                                  //                   reverse: true,
                                  //                   enlargeCenterPage: true,
                                  //                   // scrollDirection: Axis.vertical,
                                  //
                                  //                   autoPlayAnimationDuration:
                                  //                       const Duration(
                                  //                           seconds: 2),
                                  //                   onPageChanged: (index,
                                  //                           reason) =>
                                  //                       setState(() {
                                  //                         activeIndex = index;
                                  //                       }))),
                                  //         ),
                                  //       ),
                                  //       const SizedBox(
                                  //         height: 15,
                                  //       ),
                                  //       buildIndicator(
                                  //           activeIndex, eHotelMockups)
                                  //     ]),
                                  //   ),
                                  // )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const BottomNavigationBarPage(),
                    ],
                  )))
        ],
      ),
    );
  }
}

Widget buildImage(String imageUrl, int index, double width) {
  return SizedBox(
    width: width * 0.13,
    // decoration: ,
    // margin: const EdgeInsets.symmetric(horizontal: 5),
    child: Image.asset(imageUrl, fit: BoxFit.cover),
  );
}

Widget buildIndicator(int activeIndex, List<String> imageUrls) =>
    AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: imageUrls.length,
      effect: const ExpandingDotsEffect(
          dotWidth: 10, activeDotColor: Color(0xff000035)),
    );
