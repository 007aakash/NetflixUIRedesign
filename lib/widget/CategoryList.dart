import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatelessWidget {
  final String category;
  final String backgroundimagetext;
  const CategoryList({
    Key key,
    this.category,this.backgroundimagetext
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:1,right:8.0,bottom: 16,top: 10),
      child: Container(
        height: 60,
        width: 140,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
              image: AssetImage(backgroundimagetext)),
          boxShadow: [
            BoxShadow(
              color: Colors.red.shade300,
              offset: Offset(1.0, 6.0),
              blurRadius: 6.0,
            ),
          ],
          color: Colors.red.shade400,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(category,style: GoogleFonts.sourceSansPro(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 1)),
        ),
      ),
    );
  }
}