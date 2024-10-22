import 'dart:core';

import 'package:flutter/material.dart';
import 'package:portfolio/pages/services.dart';
import 'package:portfolio/pages/works.dart';

import './about.dart';
import './contact.dart';
import './nav_bar_copy.dart';
import 'home_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _widgetOptions = [
    const HomeBody(),
    const AboutPage(),
    const WorksPage(),
    const ServicesPage(),
    const ContactPage()
  ];

  int _selected = 0;
  void selectedItem(int item) {
    setState(() {
      _selected = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff000035),
      body: Stack(
        children: [
          // ClipPath(
          //   clipper: CustomShapeClipper(),
          //   child: Container(
          //     // color: const Color(0xff000042),
          //     decoration: const BoxDecoration(
          //         image: DecorationImage(
          //             image: AssetImage('images/bg2.png'), fit: BoxFit.fill)),
          //   ),
          // ),
          Container(
            // color: const Color(0xff000042),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg1.jpg'), fit: BoxFit.fill)),
          ),
          Column(
            children: [
              NavBar(onPress: selectedItem, selected: _selected),
              const HomeBody(),
              // _widgetOptions[_selected],
              // const BottomNavigationBarPage()
            ],
          ),
        ],
      ),
    );
  }
}
