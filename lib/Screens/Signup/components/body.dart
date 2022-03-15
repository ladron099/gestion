import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gestion/Screens/Signup/components/social_icon.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Login/components/background.dart';
import '../../Login/login_screen.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              
              padding: EdgeInsets.only(top: 40),
              child: Text(
                "ENTREZ VOS INFORMATIONS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.45,
            ),
            RoundedInputField(
              hintText: "Nom complet",
              onChanged: (value) {}, icon: Icons.person,
            ),
            RoundedInputField(
              hintText: " Email",
              onChanged: (value) {}, icon: Icons.email,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "CREER UN COMPTE",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}
