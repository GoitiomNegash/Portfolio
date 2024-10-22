import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  final Function(int) onPress;
  final int selected;
  const NavBar({super.key, required this.onPress, required this.selected});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 750) {
        return LargeScreenNavBar(
          onPress: onPress,
          selected: selected,
        );
      } else {
        return SmallScreenNavBar(
          onPress: onPress,
          selected: selected,
        );
        ;
      }
    });
  }
}

class LargeScreenNavBar extends StatelessWidget {
  final Function(int) onPress;
  final int selected;
  const LargeScreenNavBar(
      {super.key, required this.onPress, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // color: Colors.black87,
      decoration: BoxDecoration(
          color: const Color(0xff000035)
              .withOpacity(0.60) //Color(0xff39597B),Color(0xff000035)
          // backgroundBlendMode: true,
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 4,
            child: DecoratedBox(
              decoration: BoxDecoration(),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("images/logo44.png"),
                        height: 50,
                      ),
                      // Text(
                      //   "Goitom Negash",
                      //   style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 34.0,
                      //       color: Colors.white),
                      // ),
                      // Icon(
                      //   Icons.check_circle,
                      //   color: Colors.white,
                      //   size: 34.0,
                      // )
                    ],
                  )),
            ),
          ),
          // const Expanded(
          //     child: SizedBox(
          //   width: 20,
          // )),
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.toNamed('/home');
                    // Navigator.pushNamed(context, '/');
                  },
                  child: Row(
                    children: [
                      selected == 0
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 18,
                            )
                          : const Text(""),
                      Text(
                        "Home",
                        style: selected == 0
                            ? const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                // decoration: TextDecoration.underline,
                                // decorationThickness: 1,
                                // decorationColor: Colors.white,
                                color: Colors.green)
                            : const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    // onPress(1);
                    // Navigator.pushNamed(context, '/about');
                    Get.toNamed('/about');
                    //Get.toNamed(Routes.about);
                  },
                  child: Row(
                    children: [
                      selected == 1
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 18,
                            )
                          : const Text(""),
                      Text(
                        "About Me",
                        style: selected == 1
                            ? const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)
                            : const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/works');
                    Get.toNamed('/works');
                    // Get.toNamed(Routes.works);
                  },
                  child: Row(
                    children: [
                      selected == 2
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 18,
                            )
                          : const Text(""),
                      Text(
                        "Works",
                        style: selected == 2
                            ? const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)
                            : const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   width: 20,
                // ),
                // InkWell(
                //   onTap: () {
                //     // Navigator.pushNamed(context, '/services');
                //     Get.toNamed('/services');
                //     // Get.toNamed(Routes.services);
                //   },
                //   child: Row(
                //     children: [
                //       selected == 3
                //           ? const Icon(
                //               Icons.check_circle,
                //               color: Colors.green,
                //               size: 18,
                //             )
                //           : const Text(""),
                //       Text(
                //         "Services",
                //         style: selected == 3
                //             ? const TextStyle(
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.green)
                //             : const TextStyle(color: Colors.white),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, '/contact');
                    Get.toNamed('/contacts');
                    // Get.toNamed(Routes.contacts,transition: );
                  },
                  child: Row(
                    children: [
                      selected == 4
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 18,
                            )
                          : const Text(""),
                      Text(
                        "Contacts",
                        style: selected == 4
                            ? const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)
                            : const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                // const CircleAvatar(
                //   radius: 25,
                //   backgroundColor: Colors.green,
                //   child: CircleAvatar(
                //     radius: 22,
                //     backgroundImage: AssetImage('images/profile.jpg'),
                //   ),
                // ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SmallScreenNavBar extends StatefulWidget {
  final Function(int) onPress;
  // final VoidCallback onPress;
  final int selected;
  const SmallScreenNavBar(
      {super.key, required this.onPress, required this.selected});
  @override
  State<SmallScreenNavBar> createState() => _SmallScreenNavBarState();
}

class _SmallScreenNavBarState extends State<SmallScreenNavBar> {
  bool menu = false;
  final GlobalKey<DrawerControllerState> _drawerKey =
      GlobalKey<DrawerControllerState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff000035).withOpacity(0.60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage("images/logo44.png"),
                height: 100,
              ),
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white, size: 34),
                onPressed: () {
                  setState(() {
                    menu = !menu;
                  });
                },
              ),
            ],
          ),
          Visibility(
              visible: menu,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed('/home');
                    },
                    child: Row(
                      children: [
                        widget.selected == 0
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 18,
                              )
                            : const Text(""),
                        Text(
                          "Home",
                          style: widget.selected == 0
                              ? const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)
                              : const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/about');
                    },
                    child: Row(
                      children: [
                        widget.selected == 1
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 18,
                              )
                            : const Text(""),
                        Text(
                          "About Me",
                          style: widget.selected == 1
                              ? const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)
                              : const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/works');
                    },
                    child: Row(
                      children: [
                        widget.selected == 2
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 18,
                              )
                            : const Text(""),
                        Text(
                          "Works",
                          style: widget.selected == 2
                              ? const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)
                              : const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  // InkWell(
                  //   onTap: () {
                  //     Get.toNamed('/services');
                  //   },
                  //   child: Row(
                  //     children: [
                  //       widget.selected == 3
                  //           ? const Icon(
                  //               Icons.check_circle,
                  //               color: Colors.green,
                  //               size: 18,
                  //             )
                  //           : const Text(""),
                  //       Text(
                  //         "Services",
                  //         style: widget.selected == 3
                  //             ? const TextStyle(
                  //                 fontSize: 16,
                  //                 fontWeight: FontWeight.bold,
                  //                 color: Colors.green)
                  //             : const TextStyle(color: Colors.white),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed('/contacts');
                    },
                    child: Row(
                      children: [
                        widget.selected == 4
                            ? const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 18,
                              )
                            : const Text(""),
                        Text(
                          "Contacts",
                          style: widget.selected == 4
                              ? const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green)
                              : const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // const CircleAvatar(
                  //   radius: 25,
                  //   backgroundColor: Colors.green,
                  //   child: CircleAvatar(
                  //     radius: 22,
                  //     backgroundImage: AssetImage('images/profile.jpg'),
                  //   ),
                  // ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ))
        ],
      ),
    );
    //   Scaffold(
    //   appBar: PreferredSize(
    //     preferredSize: Size.fromHeight(80.0),
    //     child: AppBar(
    //       title: const Text("My Portfolio"),
    //       leading: IconButton(
    //         icon: const Icon(
    //           Icons.menu,
    //           color: Colors.green,
    //           size: 24,
    //         ),
    //         onPressed: () {},
    //       ),
    //     ),
    //   ),
    //   body: Container(
    //     height: 1,
    //   ),
    //   bottomNavigationBar: Container(
    //     height: 1,
    //   ),
    // );
  }
}

// import 'package:flutter/material.dart';
//
// class NavBar extends StatefulWidget {
//   // final Function selectedItem;
//   const NavBar({super.key, required Null Function() onPress});
//   // final selected = '';
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   // late final Function selectedItem;
//   // NavBar({ required this.selectedItem});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 100,
//       // color: Colors.black87,
//       decoration: const BoxDecoration(color: Colors.white
//           // backgroundBlendMode: true,
//           ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             flex: 4,
//             child: Row(
//               children: [
//                 // Container(
//                 //   height: 100,
//                 //   width: 100,
//                 //   decoration: const BoxDecoration(
//                 //       image: DecorationImage(
//                 //           image: AssetImage("images/profile.jpg"),
//                 //           fit: BoxFit.fill),
//                 //       // color: Colors.white,
//                 //       shape: BoxShape.circle),
//                 //   // child: const Center(child: Text("G N")),
//                 // ),
//                 TextButton(
//                     onPressed: () {
//                       setState(() {});
//                     },
//                     child: const Text(
//                       "Goitom Negash",
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
//                     ))
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 8,
//             child: Row(
//               children: [
//                 TextButton(
//                     onPressed: onPress,
//                     child: const Text(
//                       "Home",
//                       style: TextStyle(),
//                     )),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 TextButton(onPressed: () {}, child: const Text("About me")),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 TextButton(onPressed: () {}, child: const Text("Works")),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 TextButton(onPressed: () {}, child: const Text("Services")),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 TextButton(onPressed: () {}, child: const Text("Contacts")),
//                 const SizedBox(
//                   width: 100,
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
// import 'dart:core';
//
// import 'package:flutter/material.dart';
// import 'package:portfolio/pages/services.dart';
// import 'package:portfolio/pages/works.dart';
//
// import './about.dart';
// import './contact.dart';
// import 'home_body.dart';
// import 'nav_bar.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required String title});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final List<Widget> _widgetOptions = [
//     const HomeBody(),
//     const AboutPage(),
//     const WorksPage(),
//     const ServicesPage(),
//     const ContactPage()
//   ];
//
//   int _selected = 0;
//   void selectedItem(int item) {
//     setState(() {
//       _selected = item;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('images/b4.png'), fit: BoxFit.fill)),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 0.0),
//           child: Column(
//             children: [
//               NavBar(onPress: selectedItem, selected: _selected),
//               // Container(
//               //   decoration: const BoxDecoration(
//               //       image: DecorationImage(image: AssetImage('images/bd.jpg'))),
//               //   // child: _widgetOptions[_selected],
//               // ),
//               // const Divider(),
//
//               _widgetOptions[_selected],
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
