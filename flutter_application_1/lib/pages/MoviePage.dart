import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/MoviePageButtons.dart';
import 'package:flutter_application_1/widgets/NavBar.dart';


class MoviePage extends StatelessWidget{
 
 @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Stack(
         children: [
           Opacity(
             opacity: 0.4,
             child: Image.asset(
               "assets/images/capa1.jpg",
               height: 220,
               width: double.infinity,
               fit: BoxFit.cover,
             ),
           ),
           SingleChildScrollView(
              child: SafeArea(
                 child: Column(
                   children: [
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           InkWell(
                             onTap: () {
                               Navigator.pop(context);
                             },
                             child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25,
                             ),
                           ),
                           InkWell(
                             onTap: () { },
                             child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 27,
                             ),
                           ),
                         ]
                       ),
                     ),

                     SizedBox(height: 55,),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.red.withOpacity(0.3),
                                   spreadRadius: 0.1,
                                   blurRadius: 10,
                                 ),
                               ],
                             ),
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(20), 
                               child: Image.asset(
                                 "assets/images/brevemente1.jpg",
                                 height: 180,
                                 width: 140,
                               ),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(right: 32, top: 46),
                             height: 60,
                             width: 60,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(40),
                               color: Colors.red,
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.red,
                                   spreadRadius: 2,
                                   blurRadius: 6,
                                 ),
                               ],
                             ),
                             child: Icon(
                               Icons.play_arrow,
                               color: Colors.white,
                               size: 34,
                             ),
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 27,),
                     MoviePageButtons(),
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                       child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                               "Adão negro",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 27,
                                 fontWeight: FontWeight.w500,
                               ),
                             ),
                             SizedBox(height: 14,),
                             Text(
                               "Olá Leandro, Adão negro é um dos filmes muito apreciado em Angola nos ultimos tempos, então não perca a oputunidade de assisir esta filme!",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 14,
                                 fontWeight: FontWeight.w400,
                               ),
                             ),
                          ],
                       ),
                     ),
                   ],
                 ),
              ),
           ),
         ],
       ),
       bottomNavigationBar: NavBar(),
     );
  }

}