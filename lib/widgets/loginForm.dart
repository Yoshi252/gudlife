import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:gudlife/widgets/sign_up_with.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double fadedOpacity = 1;

    return AnimatedBuilder(
        animation: _animationController,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            const Image(
              image: AssetImage("assets/images/greenslime.png"),
              fit: BoxFit.fill,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Image(
                    image: AssetImage("assets/images/gudlife_logo.png"),
                    width: 190,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                label: const Text('Email'),
                                hintText: 'Enter Email',
                                hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 165, 165, 165),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(
                                        0xFFE9EC19), // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE9EC19),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 200, 218, 233),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue))),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            style: const TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                label: const Text('Password'),
                                hintText: 'Enter Password',
                                hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 165, 165, 165),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(
                                        0xFFE9EC19), // Default border color
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE9EC19),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 200, 218, 233),
                                      width: 2 // Default border color
                                      ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                errorBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blue))),
                            style: const TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          decoration: ShapeDecoration(
                            color: Color(0xFFE9ED1A),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.77, color: Color(0xFFE9EC19)),
                              borderRadius: BorderRadius.circular(6.18),
                            ),
                          ),
                          child: Center(child: Text('Login')),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SignUpWith(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Logo(Logos.facebook_f),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                backgroundColor: Color.fromARGB(
                                    255, 200, 218, 233), // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Logo(Logos.twitter),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                backgroundColor: Color.fromARGB(
                                    255, 200, 218, 233), // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Logo(Logos.google),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                backgroundColor: Color.fromARGB(
                                    255, 200, 218, 233), // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Logo(Logos.apple),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                backgroundColor: Color.fromARGB(
                                    255, 200, 218, 233), // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        builder: (context, child) =>
            Opacity(opacity: _animationController.value * 1, child: child));
  }
}
