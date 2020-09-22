import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mehmetcan Emanet',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('images/Avatar.png'),
              ),
              Text(
                'Mehmetcan Emanet',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Computer Engineering',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                child: Card(
                  color: Colors.grey.shade900,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      MdiIcons.github,
                      color: Colors.white,
                    ),
                    title: Text(
                      '/ menectra',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      _launchURL('https://github.com/menectra');
                    },
                  ),
                ),
              ),
              Container(
                width: 350,
                child: Card(
                  color: Colors.grey.shade900,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      MdiIcons.linkedin,
                      color: Colors.white,
                    ),
                    title: Text(
                      '/ emanetmehmetcan',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      _launchURL(
                          'https://www.linkedin.com/in/emanetmehmetcan/');
                    },
                  ),
                ),
              ),
              Container(
                width: 350,
                child: Card(
                  color: Colors.grey.shade900,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      MdiIcons.gmail,
                      color: Colors.white,
                    ),
                    title: Text(
                      '/ Send me an E-mail',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      _launchURL('mailto:<mehmetcanemanet@gmail.com>?');
                    },
                  ),
                ),
              ),
              Container(
                width: 350,
                child: Card(
                  color: Colors.grey.shade900,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      MdiIcons.school,
                      color: Colors.white,
                    ),
                    title: Text(
                      '/ Istinye University',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      _launchURL('https://muhendislik.istinye.edu.tr/en');
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
