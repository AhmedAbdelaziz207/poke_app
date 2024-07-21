import 'package:flutter/material.dart';


class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Character Details"),
        backgroundColor: Colors.cyan.shade500,
      ),
      backgroundColor: Colors.cyan.shade500,
      body:Container(
        color: Colors.cyanAccent,
        child:  Stack(
          children: [
            Container(
              color: Colors.cyanAccent,
              child: Column(
                children: [
                  const SizedBox(height: 100), // Space for the image to overlap
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 80), // Space for the image
                          Text(
                            "title",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Hero(
                tag: "image6",
                child: Image.asset(
                  "assets/images/character_image.png",
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
