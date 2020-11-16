import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:emeetation_test_app/providers/auth.dart';
import 'package:emeetation_test_app/providers/interests_data.dart';
import 'package:emeetation_test_app/util/constants.dart';
import 'package:emeetation_test_app/pages/auth_screen.dart';
import 'package:emeetation_test_app/pages/interests_screen.dart';
import 'package:emeetation_test_app/pages/profile_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        ),
        ChangeNotifierProvider(
          create: (_) => InterestsData(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'SourceSansPro',
            primaryColor: Colors.white,
            accentColor: kAccentColor,
            hintColor: Colors.white,
            errorColor: kErrorColor,
          ),
          home: auth.isAuth ? InterestsScreen() : AuthScreen(),
          routes: {
            AuthScreen.routeName: (ctx) => AuthScreen(),
            InterestsScreen.routeName: (ctx) => InterestsScreen(),
            ProfileScreen.routeName: (ctx) => ProfileScreen()
          },
        ),
      ),
    );
  }
}
