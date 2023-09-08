import 'package:flutter/material.dart';
import 'package:quick_read/core/res/image_res.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImagePath.welcomePage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: FractionallySizedBox(
            widthFactor: 1.0,
            child: Container(
              color: Colors.black
                  .withOpacity(0.5), // Add a semi-transparent background
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Your Entire Library in One Place",
                    style: TextStyle(
                      fontSize: 24, // Adjust the font size as needed
                      color: Colors.white, // Set the text color
                      fontWeight:
                          FontWeight.bold, // Adjust the font weight as needed
                    ),
                    textAlign: TextAlign.center, // Center the text horizontally
                  ),
                  const SizedBox(
                      height: 10), // Add some spacing between the texts
                  const Text(
                    "Read, Learn, Grow",
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size as needed
                      color: Colors.white, // Set the text color
                    ),
                  ),
                  const SizedBox(
                      height:
                          20), // Add some spacing between the texts and the button
                  ElevatedButton(
                    onPressed: () {
                      // Add your button action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.blue, // Set the button's background color
                    ),
                    child: const Text(
                      "Dive In",
                      style: TextStyle(
                        fontSize: 18, // Adjust the font size as needed
                        color: Colors.white, // Set the text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
