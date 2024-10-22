import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import "package:url_launcher/url_launcher.dart";

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return LargeScreenBottomNavBar();
      } else {
        return const SmallScreenBottomNavBar();
      }
    });
  }
}

class LargeScreenBottomNavBar extends StatelessWidget {
  const LargeScreenBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff000035),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contacts:",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "+251-989-84-51-76",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "+251-714-84-51-76",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "goitom.negash2023@gmail.com",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "getishmit@gmail.com",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fellow me on:",
                    style: TextStyle(
                        // decoration: TextDecoration.lineThrough,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse(
                          "https://www.facebook.com/goitom.negash.39");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse("https://t.me/@GoitomNegash");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.telegram_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Telegram",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse("https://github.com/GoitiomNegash");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.github,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Github.com",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse(
                          "www.linkedin.com/in/goitom-negash-77648817b");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Linked In",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "@ Copy right 2024",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 1,
                        // fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  Text(
                    "All rights Reserved!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 1,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class SmallScreenBottomNavBar extends StatelessWidget {
  const SmallScreenBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff000035),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contacts:",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "+251-989-84-51-76",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "+251-714-84-51-76",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "goitom.negash2023@gmail.com",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "getishmit@gmail.com",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fellow me on:",
                    style: TextStyle(
                        // decoration: TextDecoration.lineThrough,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse(
                          "https://www.facebook.com/goitom.negash.39");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse("https://t.me/@GoitomNegash");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.telegram_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Telegram",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse("https://github.com/GoitiomNegash");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.github,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Github.com",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      final url = Uri.parse(
                          "www.linkedin.com/in/goitom-negash-77648817b");
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw "Couldn't launch url $url";
                      }
                    },
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Linked In",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.green,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              decorationThickness: 2),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "@ Copy right 2024",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 1,
                        // fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  Text(
                    "All rights Reserved!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Color(0xff000035),
                        decorationThickness: 1,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
