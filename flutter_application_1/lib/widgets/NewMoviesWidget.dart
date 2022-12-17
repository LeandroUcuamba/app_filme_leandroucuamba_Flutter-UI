import 'package:flutter/material.dart';

class NewMoviesWidget extends StatelessWidget{
 
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
                "Novos filmes",
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
        SizedBox(height: 15),
        SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               for(int i=1; i<11; i++)
               InkWell(
                 onTap: () {
                   Navigator.pushNamed(context, "moviePage");
                 },
                 child: Container(
                   width: 190,
                   height: 300,
                   margin: EdgeInsets.only(left: 10),
                   decoration: BoxDecoration(
                      color: Color.fromARGB(206, 27, 23, 68),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                           color: Color(0xFF292B37).withOpacity(0.5).withOpacity(0.5),
                           spreadRadius: 2,
                           blurRadius: 6,
                        ),
                      ],
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                        ClipRRect(
                           borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                           ),
                           child: Image.asset(
                              "assets/images/movie$i.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.fill
                           ),
                        ),
                        Padding(
                           padding: EdgeInsets.symmetric(
                             horizontal: 10,
                             vertical: 5,
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                                Text(
                                   "Titulo",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 21,
                                     fontWeight: FontWeight.w500,
                                   ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                   "Anime/Aventura",
                                   style: TextStyle(
                                     color: Colors.white54,
                                   ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "7.3",
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                             ],
                           ),
                        ),

                     ],
                   ),
                 ),
               ),
             ]
           ),
         ),
      ],
    );
  }

}