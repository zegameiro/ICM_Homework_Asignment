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
              "20ºC",
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
              "Monday, August 21",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: SizedBox(
                height: 155,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCard(
                      time: "19h00", 
                      day: 'Mon', 
                      image: 'assets/images/clear_day.png', 
                      temperature: "20ºC",
                      current: true
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: '20h00', 
                      day: 'Mon', 
                      image: 'assets/images/cloudy_day.png', 
                      temperature: '19ºC',
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: "21h00", 
                      day: 'Mon', 
                      image: 'assets/images/cloudy_night.png', 
                      temperature: "18ºC",
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: '22h00', 
                      day: 'Mon', 
                      image: 'assets/images/cloudy_night.png', 
                      temperature: '18ºC',
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: "23h00", 
                      day: 'Mon', 
                      image: 'assets/images/clear_night.png', 
                      temperature: "17ºC",
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: '00h00', 
                      day: 'Tue', 
                      image: 'assets/images/clear_night.png', 
                      temperature: '17ºC',
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: "01h00", 
                      day: 'Tue', 
                      image: 'assets/images/fog_night.png', 
                      temperature: "15ºC",
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: '02h00', 
                      day: 'Tue', 
                      image: 'assets/images/thunder_night.png', 
                      temperature: '13ºC',
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: "03h00", 
                      day: 'Tue', 
                      image: 'assets/images/fog_night.png', 
                      temperature: "14ºC",
                      current: false,
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 40,
                      endIndent: 40,
                    ),
                    buildCard(
                      time: '04h00', 
                      day: 'Tue', 
                      image: 'assets/images/fog_night.png', 
                      temperature: '15ºC',
                      current: false,
                    ),

                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Sunrise',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '05h12',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset(
                          "assets/images/sunrise.png",
                          width: 90,
                          height: 90,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 20),
                        child: Column(
                          children: [
                            Text(
                              'Sunset',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              '19h52',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "assets/images/sunset.png",
                          width: 90,
                          height: 90,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                      indent: 15,
                      endIndent: 15,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/cloudy.png',
                                height: 70,
                                width: 70,
                              ),
                              Center(
                                child: Text(
                                  '47%',
                                ),
                              ),
                              Text(
                                'Cloudcover'
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/atmospheric.png',
                                height: 70,
                                width: 70,
                              ),
                              Center(
                                child: Text(
                                  '999hPa',
                                ),
                              ),
                              Text(
                                'Pressure'
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/sun.png',
                                height: 70,
                                width: 70,
                              ),
                              Center(
                                child: Text(
                                  '1',
                                ),
                              ),
                              Text(
                                'UV-index'
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 1),
              child: SizedBox(
                height: 470,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Monday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloudy_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Overcast'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '13ºC/22ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Tuesday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloudy_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Overcast'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '14ºC/21ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Wednesday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/thunder_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Thunder...'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '12ºC/19ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Thursday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloudy_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Overcast'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '12ºC/18ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Friday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloudy_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Overcast'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '12ºC/19ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Saturday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloudy_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Overcast'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '11ºC/20ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text('Sunday'),
                            )
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/cloudy_day.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Overcast'),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                '10ºC/20ºC'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20, top: 10),
                        child: Text(
                          '12-day Weather Forecast',
                          style: TextStyle(
                            fontSize: 17
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildCard({required String time, required String day, required String image, required String temperature, required bool current}) {
  return Card(
    color: current ? Colors.deepPurple : null,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text(time)),
          Center(
            child: Text(
              day,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey
              ),
            )
          ),
          Center(
            child: Image.asset(
              image,
              width: 40,
              height: 40,
            ),
          ),
          Center(
            child: Text(
              temperature,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    ),
  );
}