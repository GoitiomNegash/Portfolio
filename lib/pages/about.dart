import 'dart:core';
// import 'dart:core';
import 'dart:html' as html;
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:portfolio/pages/bottom_nav.dart';
import 'package:url_launcher/url_launcher.dart';

import 'nav_bar_copy.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Future<Uint8List> generatePdf() async {
    final pdf = pw.Document();

    // Add a page with text to the PDF
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Text('Hello, this is a sample PDF! To be down Loaded!!!!'),
        ),
      ),
    );

    // Return PDF data as Uint8List (byte format)
    return pdf.save();
  }

  Future<Uint8List> readPdfFile(String filePath) async {
    File pdfFile = File(filePath);
    Uint8List pdfBytes = await pdfFile.readAsBytes();
    return pdfBytes;
  }

  downloadFile(Uint8List pdfData) {
    final blob = html.Blob([pdfData], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Create an AnchorElement to trigger download
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'sample.pdf')
      ..click();

    // Revoke the object URL after the download to free memory
    html.Url.revokeObjectUrl(url);
    // final pdfBytes = readPdfFile(url);
    // // Create a Blob from the PDF data
    // final blob = html.Blob([pdfBytes], 'application/pdf');
    //
    // // Generate a downloadable link
    // final urlGenerated = html.Url.createObjectUrlFromBlob(blob);
    //
    // // Create an AnchorElement to trigger the download
    // final anchor = html.AnchorElement(href: urlGenerated)
    //   ..setAttribute('download', 'Goitom Negash Cv.pdf')
    //   ..click(); // Trigger the download
    //
    // // Revoke the object URL after the download to release memory
    // html.Url.revokeObjectUrl(url);
    // html.AnchorElement anchorElement = html.AnchorElement(href: url);
    // anchorElement.download = 'Goitom Cv';
    // anchorElement.click();
  }

  List<Map<String, dynamic>> items = [{}, {}, {}];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Map<String, dynamic>> experiences = [
      {
        'company': "Semien Microfinance Sc. ",
        'title': "Junior system Administrator. (01/05/2024 - On going....) ",
        'description':
            "#Windows server system administrator. \n*System Installation, Configuration, and Maintenance \n*User Management\n*Managing the Core Banking system \n*Ensuring that the systems, servers, and networks are functioning optimally and securely.\n*Virtualization and Cloud Management.\n*Performance Tuning and Optimization"
      },
      {
        'company': "North start Trade sc.",
        'title':
            "Mobile and web application developer. (01/12/2023 - 01/07/2024)",
        'description':
            "#Flutter developer, UI/UX designer .\n*Developing a user friendly, interactive and responsive mobil and Web application\n*Designing a captivating graphics designs for the company's social media contents"
      },
      {
        'company': "Angineers",
        'title': "Software developer. (Internship)",
        'description':
            "#Full stack developer\n*Developing web applications( React front end , node js - Back end with firebase database), \n*Giving web design training."
      },
      // {
      //   'company': "Angineers",
      //   'title': "Software developer",
      //   'description':
      //       "Full stack developer( React front end , node js - Back end), \nGiving web design training."
      // },
      // {
      //   'company': "Angineers",
      //   'title': "Software developer",
      //   'description':
      //       "Full stack developer( React front end , node js - Back end), \nGiving web design training."
      // },
      // {
      //   'company': "Angineers",
      //   'title': "Software developer",
      //   'description':
      //       "Full stack developer( React front end , node js - Back end), Giving web design training."
      // }
    ];
    final List<DataColumn> columns = [
      const DataColumn(label: Text('Organization')),
      const DataColumn(label: Text('My Role')),
    ];
    final List<DataRow> rows = experiences
        .map((e) => DataRow(cells: [
              DataCell(IntrinsicHeight(
                child: Text(
                  '${e['company']}  ',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )),
              DataCell(IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        '#${e['title']}',
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Flexible(
                      child: Text(
                        '${e['description']}',
                        maxLines: 5,
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ))
            ]))
        .toList();
    //print("{$experiences[0].['company']}");
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
              selected: 1,
              onPress: (int) {},
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  color: Colors.white.withOpacity(0.9), //Color(0xff000042
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                              flex: 2,
                              child: Image(image: AssetImage('images/2.png'))),
                          Expanded(
                              flex: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "About Me",
                                    style: TextStyle(
                                        color: Colors.black,
                                        decorationColor: Colors.green,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Container(
                                    height: 3,
                                    width: 25,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Text.rich(
                                      TextSpan(text: "# This is ", children: [
                                    const TextSpan(
                                        text:
                                            "Goitom Negash, BSc. in Computer Science and Engineering(CSE).\n\n",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationThickness: 2,
                                            color: Colors.green,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                    const TextSpan(
                                        text:
                                            "# A passionate and dedicated software developer with hands on experience ",
                                        style: TextStyle(color: Colors.black)),
                                    const TextSpan(
                                        text:
                                            "\n  of building innovative and user-friendly applications. I have a strong foundation in\n "),
                                    const TextSpan(
                                        text:
                                            " Programming languages, e.g., javaScript(react, express ), PHP, Python, Dart, and am\n  proficient in using Frameworks "
                                            "and tools, e.g., Flutter, React, Django, Laravel, Git.\n\n# I'm driven by a desire to create solutions that solve real-world problems and make \n"
                                            "  a positive impact. My previous "),
                                    TextSpan(
                                        text: "projects",
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff000035),
                                            fontSize: 16),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed('/works');
                                          }),
                                    const TextSpan(
                                        text:
                                            " have included e.g., developing a web application\n  for Job portal system, building a mobile "
                                            "app for a Flight reservation.\n\n# I'm eager to continue learning and growing as a software developer. \n   I'm always seeking new challenges and opportunities "
                                            "to expand my skills \n   and contribute to the development of cutting-edge technologies.")
                                  ])),
                                  // const Text(
                                  //   " have included [List of projects, \n  e.g., developing a web application for e-commerce, building a mobile "
                                  //   "\n  app for a local business].\n\n# I'm eager to continue learning and growing as a software developer. \n   I'm always seeking new challenges and opportunities "
                                  //   "to expand my skills \n   and contribute to the development of cutting-edge technologies.",
                                  //   style: TextStyle(color: Colors.black),
                                  // ),
                                  const SizedBox(height: 15),
                                  const Text(
                                    "Skills.....",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
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
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Wrap(
                                        spacing: 20,
                                        runSpacing: 10,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.react,
                                            color: Colors.green,
                                            size: 30,
                                          ),
                                          // Icon(
                                          //   FontAwesomeIcons.,
                                          //   color: Colors.green,
                                          //   size: 30,
                                          // ),
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
                                          // Icon(
                                          //   FontAwesomeIcons.reacteurope,
                                          //   color: Colors.green,
                                          //   size: 30,
                                          // ),
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
                                            FontAwesomeIcons.mobileAndroidAlt,
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
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(15),
                                        shadowColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        backgroundColor: Colors
                                            .green, //const Color(0xff000042)
                                      ),
                                      onPressed: () async {
                                        const url =
                                            '../.assets/images/Goitom_negash_application_letter_.pdf';
                                        if (await canLaunch(url)) {
                                          await launch(
                                            url,
                                          );
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                        // final pdfData =
                                        //     await generatePdf(); // Generate PDF bytes
                                        // downloadFile(pdfData);
                                        // downloadFile(
                                        //     '../.assets/images/Goitom_negash_application_letter_.pdf');
                                      },
                                      child: const Text(
                                        "Download Cv",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ))
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.2, top: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Experiences",
                              style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                                height: 400,
                                child: SingleChildScrollView(
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: experiences.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Column(
                                          children: [
                                            Row(children: [
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  '${experiences[index]['company']}  ',
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              ),
                                              // VerticalDivider(
                                              //   color: Colors
                                              //       .black, // Color of the divider
                                              //   thickness:
                                              //       2, // Thickness of the line
                                              //   // width:
                                              //   //     20, // Space around the divider
                                              //   // indent: 10, // Start margin
                                              //   // endIndent: 10, // End margin
                                              // ),
                                              Expanded(
                                                flex: 4,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '#${experiences[index]['title']}',
                                                      style: const TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      '${experiences[index]['description']}',
                                                      maxLines: 5,
                                                      style: const TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ]),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        );
                                      }),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const BottomNavigationBarPage()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}

// DataTable(
// border: TableBorder.all(
// color: Colors.green, width: 2),
// columns: columns,
// rows: rows,
// ),
