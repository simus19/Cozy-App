import 'package:flutter/material.dart';
// import 'package:cozy_application/Pages/home_page.dart';
import 'package:cozy_application/Pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 39),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: Image.asset(
                  "assets/images/surabaya_background.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('You\'ve Booked This Place!'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            child: Image.asset(
              'assets/images/person.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            'Awesome, Thank You!',
            style: GoogleFonts.poppins(
              fontSize: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(19),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SplashPage(),
                ),
              );
            },
            child: const Text('Back to Splash Page'),
          ),
        )
      ],
    );
  }
}
