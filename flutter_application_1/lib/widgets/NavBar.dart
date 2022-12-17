import 'package:flutter/material.dart';

class NavBar extends StatelessWidget{
 
 @override
  Widget build(BuildContext context) {
      return Container(
        height: 54,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color(0xFF292B37).withOpacity(0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                 //ir a homepage()
                 Navigator.pushNamed(context, "/");
              },
              child: Icon(
                Icons.home,
                size: 29,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                 Navigator.pushNamed(context, "categoryPage");
              },
              child: Icon(
                Icons.category,
                size: 29,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.favorite_border,
                size: 29,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.person,
                size: 29,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
  }
}