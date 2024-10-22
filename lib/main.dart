import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/pages/about.dart';
import 'package:portfolio/pages/services.dart';
import 'package:portfolio/pages/works.dart';

import './pages/contact.dart';
import './pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      initialRoute: '/home',
      getPages: [
        GetPage(
            name: Routes.home,
            page: () => const MyHomePage(
                  title: 'home',
                ),
            transition: Transition.circularReveal,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: Routes.about,
            page: () => const AboutPage(),
            transition: Transition.fade,
            transitionDuration: const Duration(milliseconds: 500)),
        GetPage(
            name: Routes.services,
            page: () => const ServicesPage(),
            transition: Transition.rightToLeftWithFade,
            transitionDuration: const Duration(milliseconds: 600)),
        GetPage(
            name: Routes.works,
            page: () => const WorksPage(),
            transition: Transition.leftToRight,
            transitionDuration: const Duration(milliseconds: 600)),
        GetPage(
            name: Routes.contacts,
            page: () => const ContactPage(),
            transition: Transition.leftToRightWithFade,
            transitionDuration: const Duration(milliseconds: 600)),
      ],
      // routes: {
      //   '/home': (context) => const MyHomePage(title: 'home'),
      //   '/contact': (context) => const ContactPage(),
      //   '/about': (context) => const AboutPage(),
      //   '/services': (context) => const ServicesPage(),
      //   '/works': (context) => const WorksPage()
      // },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: const Center(child: MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class Routes {
  static const home = '/home';
  static const contacts = '/contacts';
  static const about = '/about';
  static const services = '/services';
  static const works = '/works';
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//     final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.inversePrimary
//         backgroundColor: Colors.white,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const SizedBox(height: 2,),
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
