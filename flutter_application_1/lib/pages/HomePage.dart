import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/UpcomingWidget.dart';
import 'package:flutter_application_1/widgets/NewMoviesWidget.dart';
import 'package:flutter_application_1/widgets/NavBar.dart';


class HomePage extends StatelessWidget{
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Olá, Leandro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                           "O que vai assistir?",
                          style: TextStyle(
                            color: Colors.white54,
                          )
                        ),
                      ],
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/perfil.jpg", 
                        height: 57, width:57
                      ),
                    ),
                  ],
                ),
              ),
              
            Container(
                height: 50,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: Color.fromARGB(206, 27, 23, 68),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(children: [
                   Icon(Icons.search, color: Colors.white54, size:30),
                   Container(
                     width: 300,
                     margin: EdgeInsets.only(left: 5),
                     child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Search",
                           hintStyle: TextStyle(color: Colors.white54),
                        ),
                     ),
                   ),
                ]),
              ), 

              SizedBox(height: 26,),
              UpcomingWidget(),
              SizedBox(height: 35,),
              NewMoviesWidget(),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }

}