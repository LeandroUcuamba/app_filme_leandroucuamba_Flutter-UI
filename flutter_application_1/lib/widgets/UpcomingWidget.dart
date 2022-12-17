import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget{
 
 @override
  Widget build(BuildContext context) {
    return Column(
       children: [
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 10),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                  "Brevemente",
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                   ),
                ),
                Text(
                  "Ver todos",
                   style: TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                   ),
                ),
             ],
           ),
         ),
         SizedBox(height: 15,),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
                 for(int i=1; i<5; i++)
                 Padding(
                     padding: EdgeInsets.only(left: 15),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                       child: Image.asset(
                           "assets/images/brevemente$i.jpg",
                           height: 160,
                           width: 200,
                           fit: BoxFit.fill,
                       ),
                     ),
                 )
             ]
           ),
         ),
       ],
    );
  }

}