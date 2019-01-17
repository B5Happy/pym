import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'address.dart';
import 'colors.dart';

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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: name,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: [
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
                color: Colors.grey[500],
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      /*3*/
      /*Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),*/
    ],
  ),
);

Widget textSection = Container(
  //padding: const EdgeInsets.all(32.0),
  padding: const EdgeInsets.fromLTRB(32.0, 5.0, 32.0, 32.0),
  child: Text(
    'Hello, Vanakam to evryone to this first ever meetup by Py-Coder. '
        'Py-Coder is a group of developers/coders based in Pondichery. '
        'Who are passioned of technologie and would love to share it. '
        'This meetup will talk about flutter. '
        'Feel free to join the group in the meetup page '
        'and answer the quiz to help us inprove in the futur.',
    softWrap: true,
  ),
);

Widget buttonSection(BuildContext con) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          child: Text("Where?"),
          //color: Colors.blueAccent,
          onPressed: () {
            Navigator.push(
              con,
              MaterialPageRoute(builder: (context) => GApp()),
            );
          },
        ),
        RaisedButton(
          child: Text("Where?"),
          color: Colors.blueAccent,
          onPressed: () {
            Navigator.push(
              con,
              MaterialPageRoute(builder: (context) => GApp()),
            );
          },
        )
      ],
    ),
  );
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //child:Text("Hello"),
        child: FlareActor(
          "assets/home.flr",
          //animation: "circular",
          //fit: BoxFit.cover
          //fit: BoxFit.fitHeight,
          fit: BoxFit.fitWidth,
          //color: Colors.black,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text("Home")),
        body: new Stack(children: [
          Positioned.fill(
              child: FlareActor(
            "assets/home.flr",
            alignment: Alignment.center,
            fit: BoxFit.cover,
            animation: "walk",
          )),

          //));
        ]));
  }
}

class GGPage extends StatefulWidget {
  @override
  _GGPageState createState() => new _GGPageState();
}

class _GGPageState extends State<GGPage> {
  @override
  Widget build(BuildContext context) {
    return new FlareActor(
      "assets/home.flr",
      fit: BoxFit.cover,
      animation: "idle",
    );
  }
}

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
