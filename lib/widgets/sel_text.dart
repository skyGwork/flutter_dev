import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelText extends StatelessWidget {
  const SelText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: RichText(
            text: TextSpan(
              text: 's',
              style: TextStyle(
                fontFamily: GoogleFonts.yesevaOne().fontFamily,
                // fontFamily: 'yeseva',
                fontSize: 30,
                color: Colors.blue[900],
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: 'kyi',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                TextSpan(
                  text: 'n',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                    letterSpacing: .75,
                    color: Colors.red,
                    shadows: [
                      Shadow(
                        color: Colors.blue,
                        offset: Offset(2, 1),
                        blurRadius: 0,
                      )
                    ],
                  ),
                ),
                TextSpan(
                  text: 'k',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              //  EdgeInsets.all(40),
              const EdgeInsets.symmetric(vertical: 0, horizontal: 75),
          child: Text('Expressive Learning',
              style: TextStyle(
                color: const Color(0xFF000915),
                fontFamily: GoogleFonts.comfortaa().fontFamily,
                fontSize: 16,
              )),
        )
      ],
    );
  }
}
