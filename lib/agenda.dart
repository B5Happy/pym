import 'package:flutter/material.dart';


class Agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back),
            onPressed: () {
            Navigator.pop(context);
          },),         
          title: Text('Agenda'),
        ),
      body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Small introduction'),
            ),
            ListTile(
              leading: Icon(Icons.battery_unknown),
              title: Text('What is flutter ?'),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('...'),
            ),
          ],
        ),
      ),
    );
  }
}