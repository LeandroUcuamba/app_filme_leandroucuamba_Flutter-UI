import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/CategoryPage.dart';
import 'package:flutter_application_1/pages/MoviePage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void initState(){
     //para esconder o status acima;
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

     super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         scaffoldBackgroundColor: Color.fromARGB(15, 99, 85, 223)
       ),
       routes: {
         "/" : (context) => HomePage(),
         "categoryPage" : (context) => CategoryPage(),
         "moviePage" : (context) => MoviePage(),
       },
     );
  }
}