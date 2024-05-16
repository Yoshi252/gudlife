import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState(){
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  void dispose(){
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child:  Stack(
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
                  InkWell(
                    onTap: () {
                      print(ModalRoute.of(context)?.settings.name);
                    },
                    child: const Image(
                      image: AssetImage("assets/images/gudlife_logo.png"),
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 183.67,
                    height: 37.09,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.77, color: Color(0xFFE9EC19)),
                        borderRadius: BorderRadius.circular(6.18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 183.67,
                    height: 37.09,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.77, color: Color(0xFFE9EC19)),
                        borderRadius: BorderRadius.circular(6.18),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      builder: (context, child) => Opacity(opacity: _animationController.value * 1, child: child)
    );
  }
}
