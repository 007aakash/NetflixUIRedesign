import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String imagetext;
  const MyList({
    Key key,this.imagetext
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0,left: 1,top: 6,bottom: 6),
      child: Container(
        height: 110,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagetext),
          ),
        ),
      ),
    );
  }
}
