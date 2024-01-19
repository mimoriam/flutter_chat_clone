import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_clone/features/landing/screens/landing_screen.dart';
import 'package:flutter_chat_clone/firebase_options.dart';
import 'package:flutter_chat_clone/screens/mobile_layout_screen.dart';
import 'package:flutter_chat_clone/screens/web_layout_screen.dart';
import 'package:flutter_chat_clone/common/utils/responsive_layout.dart';

import 'common/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileLayoutScreen(),
      //   webScreenLayout: WebLayoutScreen(),
      // ),
      home: const LandingScreen(),
    );
  }
}
