import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_button.dart';
import '../../../constants.dart';
import '../../../information.dart';
import '../../Login/components/background.dart';
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';
import '../../quizz_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Bienvenue",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "FORMATION",
              press: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => information(),
                    ));
              },
            ),
            RoundedButton(
              text: "QUIZZ",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizzScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
