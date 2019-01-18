import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'address.dart';
import 'colors.dart';
import 'agenda.dart';

//void main() => runApp(MyApp());
void main() {
  runApp(MaterialApp(
    title: name,
    home: MyApp(),
    //theme: _myTheme,
  ));
}

const name = 'Py-Coders';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: name,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            photoSection,
            titleSection,
            textSection,
            buttonSection(context),
          ],

          
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: const EdgeInsets.all(32.0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Welcome to the meetup',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            Text(
              'Presented by ' + name,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget textSection = Container(
  //padding: const EdgeInsets.all(32.0),
  padding: const EdgeInsets.fromLTRB(32.0, 5.0, 32.0, 32.0),
  child: Text(
    'Hello, Vanakam to evryone to this first ever meetup by ' + name + '. ' + name +
        ' is a group of developers/coders based in Pondichery. '
        'Who are passioned of technologie and would love to share it. '
        'This meetup will talk about flutter. '
        'Feel free to join the group in the meetup page '
        'and answer the quiz to help us inprove in the futur.',
    softWrap: true,
  ),
);

Widget photoSection = 
Image.asset(
  'assets/images/flutter_img2.png',
  width: 600.0,
  height: 200.0,//240
  fit: BoxFit.cover,
);

Widget buttonSection(BuildContext con) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          child: Text("Where?"),
          color: Colors.blueAccent,
          shape: StadiumBorder(),
          onPressed: () {
            Navigator.push(
              con,
              MaterialPageRoute(builder: (context) => GApp()),
            );
          },
        ),
        RaisedButton(
          child: Text("Agenda"),
          color: Colors.blueAccent,
          shape: StadiumBorder(),
          onPressed: () {
            Navigator.push(
              con,
              MaterialPageRoute(builder: (context) => Agenda()),
            );
          },
        )
      ],
    ),
  );
}
/*
final ThemeData _myTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: secondaryC,
    primaryColor: primaryC,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: primaryC,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: backgroudC,
    cardColor: backgroudC,
    textSelectionColor: primaryVC,
    errorColor: errorC,
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: primaryVC,
        bodyColor: primaryVC,
      );
}
*/