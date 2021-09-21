import 'package:flutter/material.dart';
import 'package:niori/pages/detail_chat_page.dart';
import 'package:niori/pages/home/main_page.dart';
import 'package:niori/pages/signin_page.dart';
import 'package:niori/pages/signup_page.dart';
import 'package:niori/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}
