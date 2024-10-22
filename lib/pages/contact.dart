import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Services/send_email_service.dart';
import 'package:portfolio/pages/nav_bar_copy.dart';

import 'bottom_nav.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _message = TextEditingController();
  final TextEditingController _subject = TextEditingController();
  String sentEmail = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String info =
        "Have a project in mind or want to discuss a collaboration? Feel free to reach out to me!\nI am always exited"
        "to connect with fellow developers, clients and tech Enthusiasts. \nLet's bring your ideas to life together! ";
    return Scaffold(
      body: Stack(children: [
        Container(
          // color: const Color(0xff000042),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg1.jpg'), fit: BoxFit.fill)),
        ),
        Column(
          children: [
            NavBar(
              selected: 4,
              onPress: (int) {},
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white.withOpacity(
                            0.90), // Color(0xff000042).withOpacity(0.75),
                        child: Center(
                          child: Container(
                            // width: width * 0.5,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Wrap(
                                  runSpacing: 4,
                                  spacing: 15,
                                  children: [
                                    SizedBox(
                                      width: 600,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 50),
                                          const Text(
                                            "Get In Touch!",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor:
                                                    Color(0xff000035),
                                                decorationThickness: 2),
                                          ),
                                          const SizedBox(height: 15),
                                          Text(info,
                                              style: const TextStyle(
                                                  color: Colors.black)),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.email,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "goitom.negash2023@gmail.com",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "+251-989-84-51-76",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Mekelle, Tigrai, Ethiopia",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 16),
                                              )
                                            ],
                                          ),
                                          const SizedBox(height: 20),
                                          const Text(
                                            "Skills.....",
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const SizedBox(
                                            width: 300,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 10.0),
                                              child: Wrap(
                                                spacing: 20,
                                                runSpacing: 10,
                                                children: [
                                                  Icon(
                                                    FontAwesomeIcons.react,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.js,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.nodeJs,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.figma,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.gitAlt,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.github,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  // Icon(
                                                  //   FontAwesomeIcons.githubAlt,
                                                  //   color: Colors.green,
                                                  //   size: 30,
                                                  // ),
                                                  Icon(
                                                    FontAwesomeIcons.bootstrap,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .reacteurope,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.android,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.python,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .mobileAndroidAlt,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.laravel,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.php,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons.database,
                                                    color: Colors.green,
                                                    size: 30,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 600,
                                      child: Form(
                                        key: _formKey,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 50),
                                            const Text(
                                              "CONTACT  ME !",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      Color(0xff000042),
                                                  decorationThickness: 2,
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: TextFormField(
                                                    controller: _name,
                                                    keyboardType:
                                                        TextInputType.text,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                    decoration:
                                                        const InputDecoration(
                                                      // isDense: true,
                                                      // contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                      labelText: 'Name*',
                                                      hintText: 'abc',
                                                      hintStyle: TextStyle(
                                                          color: Colors.grey),
                                                      labelStyle: TextStyle(
                                                          color: Colors.green),
                                                      // helperText: 'enter valid email address',
                                                      prefixIcon: Icon(
                                                        Icons.people,
                                                        color: Colors.green,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
                                                    onChanged:
                                                        (String value) {},
                                                    validator: (value) {
                                                      return value!.isEmpty
                                                          ? '*please enter your name'
                                                          : null;
                                                    },
                                                  ),
                                                ),
                                                const Expanded(
                                                    flex: 1, child: Text("")),
                                                Expanded(
                                                  flex: 4,
                                                  child: TextFormField(
                                                    controller: _email,
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                    decoration:
                                                        const InputDecoration(
                                                      // isDense: true,
                                                      // contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                      labelText: 'email*',
                                                      hintText: 'abc@gmail.com',
                                                      hintStyle: TextStyle(
                                                          color: Colors.black),
                                                      labelStyle: TextStyle(
                                                          color: Colors.green),
                                                      // helperText: 'enter valid email address',
                                                      prefixIcon: Icon(
                                                        Icons.email,
                                                        color: Colors.green,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(),
                                                    ),
                                                    onChanged:
                                                        (String value) {},
                                                    validator: (value) {
                                                      return value!.isEmpty
                                                          ? '*please enter your email'
                                                          : null;
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            TextFormField(
                                              controller: _subject,
                                              keyboardType: TextInputType.text,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                              decoration: const InputDecoration(
                                                // isDense: true,
                                                // contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                labelText: 'Subject*',
                                                hintText:
                                                    'Subject of your message....',
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                labelStyle: TextStyle(
                                                    color: Colors.green),

                                                // helperText: 'enter valid email address',
                                                prefixIcon: Icon(
                                                  Icons.info,
                                                  color: Colors.green,
                                                ),
                                                border: OutlineInputBorder(),
                                              ),
                                              onChanged: (String value) {},
                                              validator: (value) {
                                                return value!.isEmpty
                                                    ? '* please enter a subject of your message'
                                                    : null;
                                              },
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            TextFormField(
                                              controller: _message,
                                              keyboardType: TextInputType.text,
                                              maxLines: 5,
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                              decoration: const InputDecoration(
                                                // isDense: true,
                                                // contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                labelText: 'Message*',
                                                hintText: 'ABC....',
                                                hintStyle: TextStyle(
                                                    color: Colors.grey),
                                                labelStyle: TextStyle(
                                                    color: Colors.green),

                                                // helperText: 'enter valid email address',
                                                prefixIcon: Icon(
                                                  Icons.info,
                                                  color: Colors.green,
                                                ),
                                                border: OutlineInputBorder(),
                                              ),
                                              onChanged: (String value) {},
                                              validator: (value) {
                                                return value!.isEmpty
                                                    ? '*please type your Message'
                                                    : null;
                                              },
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            sentEmail!.isNotEmpty
                                                ? Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.check,
                                                        color: Colors.green,
                                                        size: 15,
                                                      ),
                                                      Text(
                                                        sentEmail,
                                                        style: const TextStyle(
                                                            color:
                                                                Colors.green),
                                                      ),

                                                      // const SnackBar(
                                                      //     content: Text(
                                                      //         "Email Already sent. Thank you for Contacting Me!"))
                                                    ],
                                                  )
                                                : const Text(""),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            MaterialButton(
                                              onPressed: () async {
                                                if (_formKey.currentState
                                                        ?.validate() ??
                                                    false) {
                                                  String email = _email.text;
                                                  String name = _name.text;
                                                  String subject =
                                                      _subject.text;
                                                  String message =
                                                      _message.text;
                                                  var result =
                                                      await SendEmailService
                                                          .sendMail(
                                                              email: email,
                                                              message: message,
                                                              name: name,
                                                              subject: subject);
                                                  if (result.statusCode ==
                                                      200) {
                                                    _email.clear();
                                                    _name.clear();
                                                    _subject.clear();
                                                    _message.clear();
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                            const SnackBar(
                                                                backgroundColor:
                                                                    Colors
                                                                        .green,
                                                                content: Text(
                                                                  "Message Already Sent!!! Thank you for Contacting me!",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .white),
                                                                )));
                                                    setState(() {
                                                      sentEmail =
                                                          'Email already Sent!';
                                                    });
                                                  }
                                                }
                                              },
                                              minWidth: width *
                                                  0.1, //double.infinity,
                                              height: 50,
                                              color: const Color(0xff39597B),
                                              textColor: Colors.white,
                                              child:
                                                  // isSigning
                                                  //     ? const CircularProgressIndicator(
                                                  //         color: Color(0xFF9C8A52),
                                                  //       )
                                                  //     :
                                                  const Text(
                                                'Send Message',
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const BottomNavigationBarPage()
                    ]),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
