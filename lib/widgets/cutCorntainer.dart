import 'package:flutter/material.dart';

class CutCornerContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final Color color;
  final double borderWidth;
  final Color borderColor;

  CutCornerContainer({
    required this.child,
    required this.height,
    required this.width,
    required this.color,
    this.borderWidth = 0.0,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(
            width: borderWidth * 2,
            color: borderColor,
          ),
          left: BorderSide(
            width: borderWidth,
            color: borderColor,
          ),
          right: BorderSide(
            width: borderWidth,
            color: borderColor,
          ),
        ),
      ),
      child: ClipPath(
        clipper: CutCornerClipper(),
        child: child,
      ),
    );
  }
}

class CutCornerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - size.width / 2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}