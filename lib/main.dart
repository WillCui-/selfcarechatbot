import 'package:chatbot_test1/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home.dart';
import 'register.dart';
import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Home Page',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: HomePage(),
   );
}
}

/*
class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          // TODO: There's an error
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.teal,
              textTheme: GoogleFonts.gloriaHallelujahTextTheme(
                Theme.of(context).textTheme,
              ),
            ),
            home: Splash(),
            routes: <String, WidgetBuilder>{
              '/splash': (BuildContext context) => Splash(),
              '/register': (BuildContext context) => Register(),
              '/login': (BuildContext context) => Login(),
              '/home': (BuildContext context) => HomePage(
                  // title: "Home Page",
                  ),
            },
          );
        }
        */

class _HomePageState extends State<HomePage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context,new MaterialPageRoute(
          builder: (context) => Navigation()
        ));
      },),
      appBar: AppBar(
        title: Text(
          "Home Page",
        )
      ),
    body: Container(
      alignment: Alignment.center,
      color: Colors.teal[200],
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
        image: AssetImage('assets/penguin.png'),
        height: 200,
        width: 200
      ),
        Text(
        "We are in this together!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Times New Roman",
        )),
    ])),
    );
  }
}
}

class Navigation extends StatefulWidget{
  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State<Navigation>{
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
     title: Text(
       "Navigations",
       )
     ),
   body: Container(
     alignment: Alignment.center,
     color: Colors.teal[200],
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: <Widget>[
       Image(
        image: AssetImage('assets/penguin.png'),
        height: 200,
        width: 200
      ),
       Padding(padding: EdgeInsets.all(10.0),
       child: TextButton(
        child: Text(
           "Daily Check-in"),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (context) => CheckInPage(),
           ),
           );
         },
           style: TextButton.styleFrom(
             primary: Colors.green,
             backgroundColor: Colors.amber,
             textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
         ),
         ),

         Padding(padding: EdgeInsets.all(10.0),
       child: TextButton(
           child: Text(
           "Meditation"),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (context) => MeditationPage(),
           ),
           );
         },
           style: TextButton.styleFrom(
             primary: Colors.green,
             backgroundColor: Colors.amber,
             textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
         ),
         ),

     ],
   ),
   ),
   );
 } 
}

class CheckInPage extends StatefulWidget{
  @override
  _CheckInPage createState() => _CheckInPage();
}

class _CheckInPage extends State<CheckInPage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     title: Text(
       "Daily Check-in",
       )
     ),
    body: Container(
      alignment: Alignment.center,
     color: Colors.teal[200],
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        Image(
        image: AssetImage('assets/penguin.png'),
        height: 200,
        width: 200
      ),
        Text(
        "How are you today?",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Times New Roman",
        )),

        Padding(padding: EdgeInsets.all(10.0),
       child: TextButton(
              child: Text(
           "Good :-)"),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (context) => GoodToHear(),
           ),
           );
         },
           style: TextButton.styleFrom(
             primary: Colors.green,
             backgroundColor: Colors.amber,
             textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
         ),
         ),

         Padding(padding: EdgeInsets.all(10.0),
       child: TextButton(
                  child: Text(
           "Bad :-)"),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (context) => TopicPage(),
           ),
           );
         },
           style: TextButton.styleFrom(
             primary: Colors.green,
             backgroundColor: Colors.amber,
             textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
         ),
         ),
     ]
    ),
  ));
  }
}


class MeditationPage extends StatefulWidget{
  @override
  _MeditationPage createState() => _MeditationPage();
}

class _MeditationPage extends State<MeditationPage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     title: Text(
       "Meditation Page",
       )
     ),
    body: Container(
      alignment: Alignment.center,
     color: Colors.teal[200],
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        Image(
        image: AssetImage('assets/penguin.png'),
        height: 200,
        width: 200
      ),
        Text(
        "To be implemented!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Times New Roman",
        ))],        
        ),
        ));
        }
}


class GoodToHear extends StatefulWidget{
  @override
  _GoodToHear createState() => _GoodToHear();
}

class _GoodToHear extends State<GoodToHear>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     title: Text(
       "Good to hear",
       )
     ),
    body: Container(
      alignment: Alignment.center,
     color: Colors.teal[200],
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        Image(
        image: AssetImage('assets/penguin.png'),
        height: 200,
        width: 200
      ),
        Text(
        "I am happy to hear that!",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Times New Roman",
        ))],        
        ),
        ));
        }
}

class TopicPage extends StatefulWidget{
  @override
  _TopicPage createState() => _TopicPage();
}

class _TopicPage extends State<TopicPage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     title: Text(
       "Choose an area:",
       )
     ),
    body: Container(
      alignment: Alignment.center,
     color: Colors.teal[200],
   child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
        Image(
        image: AssetImage('assets/penguin.png'),
        height: 200,
        width: 200
      ),
        Text(
        "Which areas of your life are impacted?",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Times New Roman",
        )),
        
        Padding(padding: EdgeInsets.all(10.0),
       child: TextButton(
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (context) => HomePage(),
           ),
           );
         },
         child: Text(
           "Family"),
           style: TextButton.styleFrom(
             primary: Colors.green,
             backgroundColor: Colors.amber,
             textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
         ),
         ),
         Padding(padding: EdgeInsets.all(10.0),
       child: TextButton(
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(
             builder: (context) => HomePage(),
           ),
           );
         },
         child: Text(
           "Friendship"),
           style: TextButton.styleFrom(
             primary: Colors.green,
             backgroundColor: Colors.amber,
             textStyle: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
         ),
         ),

        ],        
        ),
        ));
        }
}
