import 'package:flutter/material.dart';

class Prepare extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32,vertical: 32),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("What to do if there \n is upcoming pandemic?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),)
                  ],
                )
              ],
            ),
          ),
          DraggableScrollableSheet(
            builder: (context,scrollControler){
              return Container(
                child: SingleChildScrollView(
                  controller: scrollControler,
                  child: Column(
                    children: <Widget> [

                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 245, 248, 1),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                ),
              );
            },
            initialChildSize: 0.85,
            maxChildSize: 0.95,
            minChildSize: 0.85,
          ),
        ],
      ),
    );
  }
}