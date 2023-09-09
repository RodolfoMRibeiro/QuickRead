import 'package:flutter/material.dart';
import 'package:iread/core/res/image_res.dart';
import 'package:iread/common/custom_transitions/slide_up_transition.dart';
import 'package:iread/features/authentication/view/widgets/login_page.dart';

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your Entire Library in One Place",
                    style: TextStyle(
                      fontSize: 27, // Adjust the font size as needed
                      color: Colors.white, // Set the text color
                      fontWeight:
                          FontWeight.bold, // Adjust the font weight as needed
                    ),
                    textAlign: TextAlign.center, // Center the text horizontally
                  ),
                  const SizedBox(
                    height: 10,
                  ), // Add some spacing between the texts
                  const Text(
                    "Read, Learn, Grow",
                    style: TextStyle(
                      fontSize: 19, // Adjust the font size as needed
                      color: Colors.white, // Set the text color
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ), // Add some spacing between the texts and the button
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the second page with custom transition
                      Navigator.push(
                        context,
                        SlideUpPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.blue, // Set the button's background color
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 18, // Adjust the font size as needed
                        color: Colors.white, // Set the text color
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
