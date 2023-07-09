import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/constants.dart';

class AppBarWid extends StatelessWidget {
  const AppBarWid({
    super.key,
    required this.titile,
  });
  final String titile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Width,
        Text(
          titile,
          style: GoogleFonts.montserrat(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: Colors.white,
        ),
        Width,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        Width,
      ],
    );
  }
}
