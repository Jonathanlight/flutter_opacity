import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Opacity',
      theme: ThemeData(
        cardColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Opacity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  double raduisValue = 7.0;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.yellow,),
          onPressed: () {},
        ),
        title: Text(widget.title, style: TextStyle(color: Colors.yellow,),),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.calendar, color: Colors.yellow,),
            onPressed: () {},
          )
        ],
      ),
      body: GridView.count(
        //crossAxisCount: 1,
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        //childAspectRatio: 3.0,
        childAspectRatio: 0.9,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: <Widget>[
          MyGridItems("MARVEL ACTION", "https://images5.alphacoders.com/907/907053.jpg", 0xff0000, 0xff0000),
          MyGridItems("MARVEL ACTION", "https://images6.alphacoders.com/857/857752.png", 0xffef78, 0x78ef78),
          MyGridItems("MARVEL ACTION", "https://images6.alphacoders.com/347/347896.jpg", 0xffef78, 0x78ef78),
          MyGridItems("MARVEL ACTION", "https://images8.alphacoders.com/378/378546.jpg", 0xffef78, 0x78ef78),
          MyGridItems("MARVEL ACTION", "https://images4.alphacoders.com/598/598107.png", 0xffef78, 0x78ef78),
          MyGridItems("MARVEL ACTION", "https://images.alphacoders.com/927/927310.jpg", 0xffef78, 0x78ef78),
          MyGridItems("MARVEL ACTION", "https://images.alphacoders.com/902/902378.jpg", 0xffef78, 0x78ef78),
          MyGridItems("MARVEL ACTION", "https://images.alphacoders.com/669/669616.jpg", 0xffef78, 0x78ef78),
        ],
      ),
    );
  }

  Widget MyGridItems(String gridName, String urlImage, int color1, int color2) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.raduisValue),
        gradient: new LinearGradient(
          colors: [
            Color(color1),
            Color(color2),
          ],
          begin: Alignment.centerLeft,
          end: Alignment(1.0, 1.0),
        ),
        color: Color(color1)
      ),
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: 0.9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.raduisValue),
                image: DecorationImage(
                  image: NetworkImage(urlImage),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("skill", style:TextStyle( color: Colors.white, fontSize: 16.0)),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      child: Icon(FontAwesomeIcons.fireAlt, color: Colors.red,),
                    ),
                    SizedBox(width: 10.0,),
                    Container(
                      child: Text("Power", style:TextStyle( color: Colors.white, fontSize: 16.0)),
                    ),
                    SizedBox(width: 10.0,),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              gridName,
              style:TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight:FontWeight.bold,
              )
            ),
          ),
        ],
      ),
    );
  }
}
