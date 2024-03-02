import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/cloud.png",
              width: 200,
              height: 200,
            ),
          ),
          Center(
            child: Text(
              "20",
              style: TextStyle(
                fontSize: 90.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "Cloudy",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Center(
            child: Text(
              "Monday, August, 21",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20 ºC',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}