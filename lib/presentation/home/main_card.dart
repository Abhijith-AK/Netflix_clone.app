import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  MainCard({super.key});

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
              "https://www.themoviedb.org/t/p/w220_and_h330_face/vIeu8WysZrTSFb2uhPViKjX9EcC.jpg"),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
