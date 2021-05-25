import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MyList.dart';

class Information extends StatelessWidget {
  final String movieimage;
  final String moviename;
  final String desc;
  final String year;
  final String length;
  const Information({Key key,this.movieimage,this.moviename,this.desc,this.year,this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          ClipPath(
            clipper: MyClipper(),
            child: Container(
                alignment: Alignment.topLeft,
                height: 280,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.0, left: 10, right: 10),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                                size: 22,
                              )),
                          Image(
                            image: AssetImage(
                              'assets/netflix_logo.png',
                            ),
                            width: 120,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                            size: 22,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(movieimage),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, right: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                moviename,
                style: GoogleFonts.sourceSansPro(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Adventure, Family, Fantasy',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.pink),
                  Icon(Icons.star, color: Colors.pink),
                  Icon(Icons.star, color: Colors.pink),
                  Icon(Icons.star, color: Colors.pink),
                  Icon(Icons.star, color: Colors.black),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: 'Year'),
                          TextSpan(text: '\n'),
                          TextSpan(
                              text: year,
                              style: TextStyle(color: Colors.black)),
                        ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: 'Country'),
                          TextSpan(text: '\n'),
                          TextSpan(
                              text: '  USA',
                              style: TextStyle(color: Colors.black)),
                        ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: 'Year'),
                          TextSpan(text: '\n'),
                          TextSpan(
                              text: length,
                              style: TextStyle(color: Colors.black)),
                        ]),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(height: 80,alignment: Alignment.center,
                  child: Text(
                    desc,style: TextStyle(color: Colors.grey,fontSize: 12,decoration: TextDecoration.none),textAlign: TextAlign.center, ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Screenshots',style: GoogleFonts.sourceSansPro(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.none,color: Colors.black),),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyList(imagetext: 'assets/homecominng1.jpg',),
                    MyList(imagetext: 'assets/homecoming2.jpg',),
                    MyList(imagetext: 'assets/homecoming3.jpg',),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var controlPoint = Offset(size.width / 2, size.height + 40);
    var endPoint = Offset(size.width, size.height - 40);

    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
