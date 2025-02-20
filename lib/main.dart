import 'package:car_rental_user/Screen/MainPage.dart';
import 'package:car_rental_user/Screen/login.dart';
import 'package:car_rental_user/Screen/registration.dart';
import 'package:car_rental_user/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // ignore: await_only_futures
  currentFirebaseUser = await FirebaseAuth.instance.currentUser;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ok car',
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.purple),
      initialRoute: MainPage.id,
      routes: {
        MainPage.id: (context) => MainPage(),
        LoginPage.id: (context) => LoginPage(),
        RegistrationPage.id: (context) => RegistrationPage()
        
      },
    );
  }
}
