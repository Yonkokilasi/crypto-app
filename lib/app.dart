import 'package:crypto_app/features/home/views/home_screen.dart';
import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Crypto App',
        theme: appTheme,
        home: const HomeScreen(),
      ),
    );
  }
}
