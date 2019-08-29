import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/me.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Fadly',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final detail = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Im just a person who likes to jump in and explore the world of programming',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ]),
      ),
      child: Column(
        children: <Widget>[profil, welcome, detail],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}