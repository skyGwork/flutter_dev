import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/landingpage_args.dart';

// import 'signin_options/signup.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);
  static const routeName = '/landing-page';
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as LandingPageArgs;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/learning.jpg',
              width: 400,
            ),
            Text(
              args.note,
              style: TextStyle(
                fontFamily: GoogleFonts.comfortaa().fontFamily,
                color: Colors.grey[900],
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              args.quote,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 100),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Previous'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Browse',
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 20,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
