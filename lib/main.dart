import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_year_application/firebase_options.dart';
import 'package:flutter_final_year_application/layout/animal_app/cubit/cubit.dart';
import 'package:flutter_final_year_application/layout/animal_app/cubit/state.dart';

import 'package:flutter_final_year_application/modules/sigin_screen/cubit/cubit.dart';
import 'package:flutter_final_year_application/modules/welcome_screen/welcome_screen.dart';

import 'package:flutter_final_year_application/shared/Bloc_observer.dart';
import 'package:flutter_final_year_application/shared/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();
  runApp(Directionality(textDirection: TextDirection.rtl, child: FinalApp()));
}

class FinalApp extends StatelessWidget {
  const FinalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AppCubit(),
          ),
          BlocProvider(
            create: (context) => SigninCubit(),
          ),
        ],
        child: BlocConsumer<AppCubit, AppStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return MaterialApp(
              title: 'Splash Screen',
              theme: lightTheme,
              themeMode: ThemeMode.light,
              debugShowCheckedModeBanner: false,
              home: Directionality(
                  textDirection: TextDirection.rtl, child: WelcomeScreen()),
            );
          },
        ));
  }
}
