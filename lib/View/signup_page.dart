import 'package:cars_chat/components/auth_TaxtFeild.dart';
import 'package:cars_chat/components/auth_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  var Emailcont = TextEditingController();
  var Passcont = TextEditingController();
  var Namecont = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            SizedBox(height: ScreenHeight * 0.08),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(color: Colors.black, fontSize: 28),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Hi welcome back, you\'ve been missed',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenHeight * 0.07),
            Authtaxtfeild(
              controller: Namecont,
              hint: 'enter your name',
              validator: (value) {
                if (value == null) {
                  return 'please enter your name';
                }
                if (value.length < 3) {
                  return 'name is very short';
                }
                return null;
              },
              label: 'Name',
              color: Color(0xff4E917F),
            ),

            Authtaxtfeild(
              controller: Emailcont,
              hint: 'enter your Email',
              validator: (value) {
                if (value == null) {
                  return 'please enter your email';
                } else if (!value.contains('@gmail.com')) {
                  return 'please enter a valid email';
                }
                return null;
              },
              label: 'Email',
              color: Color(0xff4E917F),
            ),
            Authtaxtfeild(
              controller: Passcont,
              hint: 'enter password',
              validator: (value) {
                if (value == null) {
                  return 'please enter your password';
                }
                if (value.length < 8) {
                  return 'password is very ';
                }
                return null;
              },
              label: 'Password',
              color: Color(0xff4E917F),
            ),
            SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: 50,
                child: AuthButton(
                  onpressed: () {},
                  text: 'Sign In',
                  color: Color(0xff4E917F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
