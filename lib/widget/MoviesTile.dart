
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'Information.dart';

class MoviesTile extends StatelessWidget {
  final String imagetext;
  final String imagename;
  final String desc;
  final String year;
  final String length;
  const MoviesTile({Key key, this.imagetext, this.imagename,this.desc,this.year,this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Information(moviename: imagename,movieimage: imagetext,desc: desc,
            year: year,length: length,)),
          );
        },
        child: Container(
          height: 140,
          width: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagetext),
            ),
          ),
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(imagename,
                style: GoogleFonts.sourceSansPro(
                    color: Colors.white,
                    fontSize: 14,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
