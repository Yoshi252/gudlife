import 'package:flutter/material.dart';
import 'package:gudlife/widgets/input_fields.dart';
import 'package:gudlife/widgets/login_button.dart';
import 'package:gudlife/widgets/sign_in_logo_buttons.dart';
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

  final _formKey = GlobalKey<FormState>();

    var _isLogin = true;
    var _enteredEmail = '';
    var _enteredPassword = '';


    void _submit() {
      final isValid = _formKey.currentState!.validate();


      if (isValid) {
        _formKey.currentState!.save();
      }
    }


  @override
  Widget build(BuildContext context) {


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
                    key: _formKey,
                    child: Column(
                      children: [
                        const InputFields(),
                        const SizedBox(
                          height: 20,
                        ),
                        TextButton(
                        onPressed: () {
                          setState(() {
                            _isLogin = !_isLogin;
                          });
                        }, 
                        child: Text(
                          _isLogin
                              ? 'Create an account'
                              : 'I already have an account.',
                        ),
                      ),

                        GestureDetector(
                          onTap: _submit,
                          child: LoginButton(authText: _isLogin ? 'Sign Up' : 'Sign In')
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SignUpWith(),
                        //const SignInLogos()
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
