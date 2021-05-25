import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/CategoryList.dart';
import 'widget/MoviesTile.dart';
import 'widget/MyList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Image(
            image: AssetImage('assets/netflix_logo.png'),
            width: 120,
            height: 90,
          ),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MoviesTile(
                        imagetext: 'assets/nutcracker.jpg',
                        imagename: 'THE NUTCRACKER AND THE FOUR REALM',
                        desc: 'On Christmas Eve, Clara realises that before dying, her mother left her with an inheritance to a magical world of fairies and toy soldiers that are alive. She holds the key to the fate of this world.' ,
                      year: '2012',
                      length: '112m',
                    ),
                    MoviesTile(
                        imagetext: 'assets/endgame.jpg',
                        imagename: 'AVENGERS ENDGAME',
                      desc: 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.' ,
                      year: '2019',
                      length: '182m',),
                    MoviesTile(
                        imagetext: 'assets/daredevil.jpg',
                        imagename: 'DAREDEVIL',
                      desc: 'Matt Murdoch, a blind lawyer, vows to fight crime in New York City and assumes a secret identity of Daredevil. However, his mission attracts the ire of Kingpin, who is determined to kill him.' ,
                      year: '2003',
                      length: '133m',),
                    MoviesTile(
                        imagetext: 'assets/toystory.jpg',
                        imagename: 'TOY STORY 4',
                      desc: 'Woody attempts to make Forky, a toy, suffering from existential crisis, realise his importance in the life of Bonnie, their owner. However, things become difficult when Gabby Gabby enters their lives.' ,
                      year: '2019',
                      length: '100m',),
                    MoviesTile(
                        imagetext: 'assets/spiderman.jpg',
                        imagename: 'SPIDERMAN',
                      desc: 'Peter Parker tries to stop the Vulture from selling weapons made with advanced Chitauri technology while trying to balance his life as an ordinary high school student.' ,
                      year: '2017',
                      length: '133m',),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryList(category: 'DISCOVER',backgroundimagetext: 'assets/endgame2.png',),
                      CategoryList(category: 'CATEGORIES',backgroundimagetext: 'assets/flash.png',),
                      CategoryList(category: 'POPULAR',backgroundimagetext: 'assets/strangerthings.png',),
                      CategoryList(category: 'NEW',backgroundimagetext: 'assets/peaky.png',),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My List',style: GoogleFonts.sourceSansPro(fontSize: 18,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_outlined,color: Colors.black,),
                  ],
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      MyList(imagetext: 'assets/moneyheist.jpg',),
                      MyList(imagetext: 'assets/narcos.jpg',),
                      MyList(imagetext: 'assets/castlevania.jpg',),
                      MyList(imagetext: 'assets/lucifer.jpg',),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('POPULAR ON NETFLIX',style: GoogleFonts.sourceSansPro(fontSize: 18,fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward_outlined,color: Colors.black,),
                  ],
                ),
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      MyList(imagetext: 'assets/SThings.jpg',),
                      MyList(imagetext: 'assets/peakyblinder.jpg',),
                      MyList(imagetext: 'assets/locke.jpg',),
                      MyList(imagetext: 'assets/brook.jpeg',),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
