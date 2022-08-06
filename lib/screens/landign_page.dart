import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'browes.dart';
import 'signin_options/signin.dart';
// import 'signin_options/signup.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
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
              'Learn Without Limitations',
              style: TextStyle(
                fontFamily: GoogleFonts.comfortaa().fontFamily,
                color: Colors.grey[900],
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Learning is training of mind to think expressive',
              style: TextStyle(
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Browse()),
                );
              },
              child: Text(
                'Browse',
                style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 20,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              },
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
