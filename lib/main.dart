import 'package:flutter/material.dart';
import 'package:flutter_final_year_application/modules/creat_acount_screen/creat_acount_screen.dart';
import 'package:flutter_final_year_application/modules/passward_changae/passward_changae_a.dart';
import 'package:flutter_final_year_application/modules/passward_changae/passward_changae_b.dart';
import 'package:flutter_final_year_application/modules/passward_changae/passward_changae_c.dart';
import 'package:flutter_final_year_application/modules/welcome_screen/welcome_screen.dart';
import 'package:flutter_final_year_application/modules/sigin_screen/signin_screen.dart';

void main() {
  runApp(FinalApp());
}

class FinalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 7, 158, 184),
        ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Color.fromARGB(255, 7, 158, 184),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
