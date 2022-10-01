import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen>
    with SingleTickerProviderStateMixin {
  static var myNewFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.black, letterSpacing: 3));
  static var myNewFontWhite = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.white, letterSpacing: 3));

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[900],
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Container(
                        child: Text(
                          "TIC TAC TOE",
                          style: myNewFontWhite.copyWith(fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Image.asset('images/tictactoe.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(30),
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'PLAY GAME',
                              style: myNewFont,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
