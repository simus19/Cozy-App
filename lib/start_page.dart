import 'package:flutter/material.dart';
import 'package:cozy_application/Pages/splash_page.dart';
import 'package:cozy_application/Pages/home_page.dart';
import 'package:cozy_application/Pages/surabaya_details_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            // splash
            SplashPage(),
            // home
            HomePage(),
            // details
            DetailsPage()
          ],
        ),
      ),
    );
  }
}
