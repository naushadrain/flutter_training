import 'package:flutter/material.dart';
import 'package:statelesswedget/cloud_page.dart';
//import 'package:statelesswedget/profile/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Profilepage(),
     // home: ProfilePage(),
     home: CloudPage(),
    );
  }
}
