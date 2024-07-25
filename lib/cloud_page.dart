import 'dart:ui';
import 'package:flutter/material.dart';

class CloudPage extends StatefulWidget {
  const CloudPage({super.key});

  @override
  State<CloudPage> createState() => _CloudPageState();
}

class _CloudPageState extends State<CloudPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      // ),
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60),
      //   child: Container(
      //     color: Colors.blue,
      //     padding: EdgeInsets.only(left: 28.0, top: 28),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           'New York',
      //           style: TextStyle(
      //             fontWeight: FontWeight.bold,
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //         Text(
      //           'RAIN',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueGrey,
            ],
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New York',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Text(
              'RAIN',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 12.0),
              child: Row(
                children: [
                  Text(
                    '8°C',
                    style: TextStyle(color: Colors.white, fontSize: 80),
                  ),
                  Spacer(),
                  Icon(
                    Icons.cloud,
                    color: Colors.white,
                    size: 100,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'High: 13°',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Low: 8°',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Feels like 10°',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(color: Colors.white),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '80%',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'PRECIPTION',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    VerticalDivider(
                      color: Colors.white,
                      width: 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                  child: VerticalDivider(color: Colors.white),
                ),
                Column(
                  children: [
                    Text(
                      '40%',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'HUMIDITY',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                  child: VerticalDivider(color: Colors.white),
                ),
                Column(
                  children: [
                    Text(
                      '3 km/h',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'WIND',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.white),
            SizedBox(height: 20),
            Text(
              '5:44 am',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              'Sunrise',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
