import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gudlife/screens/login.dart';
import 'package:gudlife/screens/splash.dart';
import 'package:flutter/services.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((fn) {
    runApp(
      MaterialApp(
        theme: theme,
        routes: {
          '/': (context) => Splash(),
          '/login': (context) => LoginScreen(),
        },
      ),
    );
  });
}
