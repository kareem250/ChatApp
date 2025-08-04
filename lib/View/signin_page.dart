import 'package:cars_chat/components/auth_TaxtFeild.dart';
import 'package:cars_chat/components/auth_button.dart';
import 'package:cars_chat/components/circle_icon.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});
  var Emailcont = TextEditingController();
  var Passcont = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
          child: ListView(
            children: [
              SizedBox(height: ScreenHeight * 0.1),
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
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenHeight * 0.06),
              Authtaxtfeild(
                controller: Emailcont,
                hint: 'example@gmail.com',
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
                hint: '12345678',
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
                ispass: true,
              ),
              SizedBox(height: 3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0xff4E917F),
                        ),
                        child: Text('forget password?'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

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
              SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: 80,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(9),
                        ),
                      ),
                    ),

                    Text(
                      'or Sign In with',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),

                    Container(
                      height: 1,
                      width: 80,
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(9),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: CircleIcon(
                        icon: Icons.facebook_outlined,
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: CircleIcon(icon: Icons.facebook, onTap: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: CircleIcon(icon: Icons.facebook, onTap: () {}),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenHeight * 0.1),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Color(0xff4E917F),
                        ),
                        child: Text('Sign Up'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
