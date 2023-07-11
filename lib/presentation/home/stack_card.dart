import 'dart:ffi';

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class StackCard extends StatelessWidget {
  const StackCard({super.key, required this.imageUrl, required this.index});

  final String index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
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
            ],
          ),
          Positioned(
            //  top: 20,
            bottom: 15,
            left: 5,
            child: BorderedText(
              strokeWidth: 3,
              strokeColor:
                  const Color.fromARGB(228, 255, 255, 255).withOpacity(1),
              child: Text(
                index,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 120,
                    decorationColor: Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}
