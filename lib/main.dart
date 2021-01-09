import 'package:flutter/material.dart';
import 'package:ui_project/Prepare.dart';
import 'package:ui_project/To_do.dart';
import 'package:ui_project/Symptoms.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AgapApp(),
        debugShowCheckedModeBanner: false);
  }
}
class AgapApp extends StatefulWidget{
  @override
  AgapAppCreate createState() => AgapAppCreate() ;
}

class MainScreen extends State<AgapApp>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
  body: MainBody(),);
  }
}

MainBody(){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Align(
          alignment: Alignment.topRight,
           child: IconButton(icon: Icon(Icons.help), onPressed: (){}),
        ),
        Image(image: AssetImage('assets/image/IconOnlyNew.png'),
            height: 250,

          ),
        RaisedButton(
          onPressed: () {},
          child: const Text('Things to buy', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 5,),
        RaisedButton(
          onPressed: () {},
          child: const Text('Prevention tips', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 5,),
        RaisedButton(
          onPressed: () {},
          child: const Text('Emergency Hotlines', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 5,),
      ],
    ),
  );
}

class AgapAppCreate extends State<AgapApp>{
  var screens = [
    Prepare(),
    To_do(),
    Symptoms()
  ];
  int selected_tab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
        BottomNavigationBarItem(
            icon: new Image.asset("assets/image/PreventionIcon.png",width: 50,height: 50,),
            label: 'Prepare'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/Ifmerongcovid.png",width: 50,height: 50,),
              label: 'To do'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/symptoms.png",width: 50,height: 50,),
              label: 'Symptoms'),
      ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}