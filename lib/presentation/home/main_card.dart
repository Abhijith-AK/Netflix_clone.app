import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;
  MainCard({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: Dwidth * 0.3,
        height: Dwidth * 0.4,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
