import 'package:flutter/material.dart';

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width * .5, size.height * 0.75 - 100);
    var firstControlpoint = Offset(size.width * 0.25, size.height * 0.5 - 100);
    path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, 0);
    var secondControlPoint = Offset(size.width * .75, size.height - 100);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

//////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
// class CustomShapeClipper2 extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final Path path = Path();
//     path.lineTo(100.0, size.height);
//
//     var firstEndPoint = Offset(size.width * .5 + 100, size.height * 0.75);
//     var firstControlpoint = Offset(size.width * 0.25 + 100, size.height * 0.5);
//     path.quadraticBezierTo(firstControlpoint.dx, firstControlpoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);
//
//     var secondEndPoint = Offset(size.width, 0);
//     var secondControlPoint = Offset(size.width * .75, size.height - 100);
//     path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
//         secondEndPoint.dx, secondEndPoint.dy);
//
//     path.lineTo(size.width, 0.0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper oldClipper) => true;
// }
