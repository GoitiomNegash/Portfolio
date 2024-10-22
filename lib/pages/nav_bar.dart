import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(int) onPress;
  final int selected;
  const NavBar({super.key, required this.onPress, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
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
              decoration: BoxDecoration(
                  // gradient: LinearGradient(colors: [
                  //   Colors.blue,
                  //   Colors.green,
                  //   // Colors.white,
                  //   Color(0xff000035)
                  // ]),
                  // color: Colors.green, //blueGrey[50],
                  // boxShadow: <BoxShadow>[
                  //   BoxShadow(
                  //     color: Colors.black12,
                  //     offset: Offset(5, 5),
                  //     blurRadius: 5,
                  //   ),
                  // ],
                  //    borderRadius: BorderRadius.only(topRight: )
                  ),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("images/logo33.png"),
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
                    onPress(0);
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
                    onPress(1);
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
                    onPress(2);
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
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    onPress(3);
                  },
                  child: Row(
                    children: [
                      selected == 3
                          ? const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 18,
                            )
                          : const Text(""),
                      Text(
                        "Services",
                        style: selected == 3
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
                    onPress(4);
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
                const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                ),
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
