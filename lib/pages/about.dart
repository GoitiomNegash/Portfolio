import 'dart:core';
// import 'dart:core';
import 'dart:html' as html;
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:portfolio/pages/bottom_nav.dart';

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
                              child: Image(image: AssetImage('images/2.png'))),
                          Expanded(
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
                              const Text(
                                "# This is Goitom Negash (Bsc. in Computer Science and Engineering(CSE).), \n\n"
                                "# A passionate and dedicated software developer with hands on experience "
                                "\n  of building innovative and user-friendly applications. I have a strong foundation in "
                                "\n  Programming languages, e.g., javaScript(react, express ), PHP, Python, Dart, and am proficient \n  in using Frameworks "
                                "and tools, e.g., Flutter, React, Django, Laravel, Git.\n\n# I'm driven by a desire to create solutions that solve real-world problems and make \n"
                                "  a positive impact. My previous projects have included [List of projects, \n  e.g., developing a web application for e-commerce, building a mobile "
                                "\n  app for a local business].\n\n# I'm eager to continue learning and growing as a software developer. \n   I'm always seeking new challenges and opportunities "
                                "to expand my skills \n   and contribute to the development of cutting-edge technologies.",
                                style: TextStyle(color: Colors.black),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.all(15),
                                    shadowColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    backgroundColor:
                                        Colors.green, //const Color(0xff000042)
                                  ),
                                  onPressed: () async {
                                    final pdfData =
                                        await generatePdf(); // Generate PDF bytes
                                    downloadFile(pdfData);
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
