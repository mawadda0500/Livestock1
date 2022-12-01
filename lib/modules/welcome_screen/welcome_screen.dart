import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Color.fromARGB(255, 7, 158, 184),
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الثروة الحيوانية',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage('asset/images/welcome cow.png'),
                  height: 47,
                  width: 47,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 72,
            ),
            child: Container(
              child: Image(
                image: AssetImage('asset/images/spring.png'),
                height: 91,
                width: 91,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
