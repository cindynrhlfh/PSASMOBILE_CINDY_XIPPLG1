import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final alucard = const Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/skincare.jpg'),
        ),
      ),
    );

    final welcome = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome To Our Store',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang! Toko kami merasa terhormat dengan kedatangan anda di online shop kami. Kepuasan anda dengan toko kami merupakan kebahagiaan kami! <3',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28.0),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 248, 199, 255),
          Color.fromARGB(255, 255, 118, 164),
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}