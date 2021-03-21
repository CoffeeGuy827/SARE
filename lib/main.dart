import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:provider/provider.dart';
import 'package:sare/screen/SettingScreen.dart';
import 'provider/NavigationNumProvider.dart';
import 'screen/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
/*    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
     //   statusBarColor: Colors.white,
    ));*/
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavigationNumProvider>(
          create: (_) => new  NavigationNumProvider (),
        ),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/' : (BuildContext context) => SplashScreen(),
        },
        theme: ThemeData(
        ),
      ),
    );
  }
}