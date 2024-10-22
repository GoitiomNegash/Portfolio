// import 'package:flutter/flutter_animate/';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/services.dart';

import 'bottom_nav.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool hover = false;
  final double _padding = 50;
  double avatar = 100.0;
  final bool _tapped = false;
  String paragraph = "Well come to my creative corner! i'am Goitom Negash, a \n"
      "passionate Mobile and Web App Developer, UI/UX designer \n"
      "with hands on experience of crafting digital experiences \n"
      "that are both visually stunning and user-friendly.";
  String actualText = "It's Goitom Negash!";
  String text = '';
  late int _textLength;
  late double _index;
  late Timer timer, timer1;
  late final Color _bgcolor = Colors.white;
  ScrollController _scrollController = ScrollController();
  double _opacity = 1.0;

  @override
  void initState() {
    _textLength = actualText.length;
    print(
      "actual text length =$_textLength",
    );
    _index = 0;
    _scrollController.addListener(() {
      double offset = _scrollController.offset;
      setState(() {
        _opacity = 1 - (offset / 300); // Change opacity as you scroll down
        if (_opacity < 0.0) _opacity = 0.0;
      });
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        // avatar = avatar == 100.0 ? 200.0 : 100.0;
        // _tapped = !_tapped;
      });
    });

    // timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
    //   if (_index > _textLength) {
    //     _index = 0;
    //   } else {
    //     _index++;
    //   }
    //   setState(() {
    //     text = actualText.substring(0, _index as int?);
    //   });
    // });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // avatar = 100.0;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Expanded(
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              color: const Color(0xff000042).withOpacity(0.5),
              // height: height,
              child: SizedBox(
                width: width,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.2,
                    ),
                    AnimatedOpacity(
                      opacity: _opacity,
                      duration: const Duration(milliseconds: 300),
                      child: Text(
                        "Well come to my personal Website ",
                        style: TextStyle(
                            fontSize: width > 850.0 ? 60 : 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Text(".....Brimming with Energy.....",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    const Image(
                      image: AssetImage(
                        "images/logo44.png",
                      ),
                      height: 100,
                    ),
                    const SizedBox(height: 50),
                    Visibility(
                      visible: width > 500,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                border:
                                    Border.all(color: Colors.white, width: 4)),
                            width: 150,
                            child: TextButton(
                              style: ButtonStyle(
                                  // shape: ,
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          5), // Removes the border radius
                                    ),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.green; // Color when hovered
                                    }
                                    return Colors.white; // Default color
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return const Color(0xff000035).withOpacity(
                                          0.9); // Background color when hovered
                                    }
                                    return Colors.transparent;
                                  })),
                              onPressed: () {
                                Get.to(() => const ServicesPage(),
                                    transition: Transition.rightToLeft);
                              },
                              child: const Text(
                                "Services",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                border:
                                    Border.all(color: Colors.white, width: 4)),
                            width: 150,
                            child: TextButton(
                              style: ButtonStyle(
                                  // shape: ,
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          5), // Removes the border radius
                                    ),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.green; // Color when hovered
                                    }
                                    return Colors.white; // Default color
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return const Color(0xff000035).withOpacity(
                                          0.9); // Background color when hovered
                                    }
                                    return Colors.transparent;
                                  })),
                              onPressed: () {
                                Get.toNamed('/works');
                              },
                              child: const Text(
                                "Projects",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                border:
                                    Border.all(color: Colors.white, width: 4)),
                            width: 150,
                            child: TextButton(
                              style: ButtonStyle(
                                  // shape: ,
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          5), // Removes the border radius
                                    ),
                                  ),
                                  foregroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return Colors.green; // Color when hovered
                                    }
                                    return Colors.white; // Default color
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.hovered)) {
                                      return const Color(0xff000035).withOpacity(
                                          0.9); // Background color when hovered
                                    }
                                    return Colors.transparent;
                                  })),
                              onPressed: () {
                                Get.toNamed('/contacts');
                              },
                              child: const Text(
                                "Contacts",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: width,
              color: Colors.white, //const Color(0xff000042),
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 600,
                    decoration: const BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 40.0,
                              ),
                              Text(
                                "Hey There,",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0,
                                    color: Colors.green),
                              )
                            ],
                          ),
                          const Text(
                            "It's Goitom Negash!", //text,
                            style: TextStyle(
                                fontSize: 40.0,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1,
                                decorationColor: const Color(0xff000042),
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "***Well come to my creative corner! i'am Goitom Negash, a \n"
                            "passionate Mobile and Web App Developer, UI/UX designer \n"
                            "with hands on experience of crafting digital experiences \n"
                            "that are both visually stunning and user-friendly.***",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 200,
                            decoration: BoxDecoration(
                                color: hover == true
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0)),
                                border:
                                    Border.all(color: Colors.green, width: 4)),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: hover == true
                                      ? Colors.green
                                      : Colors.transparent,
                                ),
                                onHover: (bool value) {
                                  setState(() {
                                    hover = value;
                                  });
                                },
                                onPressed: () {
                                  setState(() {
                                    // _tapped = !_tapped;
                                  });
                                },
                                child: const Row(
                                  children: [
                                    Text(
                                      "Contact me  ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.black,
                                      size: 24,
                                    )
                                  ],
                                )),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    width: 600,
                    decoration: const BoxDecoration(
                        // gradient: LinearGradient(
                        //     colors: [Colors.white, _bgcolor]),
                        // color:
                        //     _bgcolor, //_tapped ? Colors.green : Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    duration: const Duration(seconds: 3),
                    alignment: _tapped
                        ? Alignment.bottomCenter
                        : AlignmentDirectional.topCenter,
                    curve: Curves.bounceInOut,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: avatar + 30.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        radius: avatar + 20.0,
                        child: CircleAvatar(
                          radius: avatar + 10.0,
                          backgroundColor: _bgcolor, //Color(0xff000035),
                          backgroundImage: const AssetImage('images/2.png'),

                          // child: Image.asset('images/profile.jpg'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const BottomNavigationBarPage()
          ])),
    );
  }
}
