import 'package:flutter/material.dart';
import 'package:flutter_crypto_application/core_package.dart';
import 'package:flutter_crypto_application/module/dashboard/view/dashboard_view.dart';
import 'package:flutter_crypto_application/state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const DashboardView(),
    );
  }
}
