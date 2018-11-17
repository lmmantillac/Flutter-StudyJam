import 'package:flutter/material.dart';

class PokeDetail extends StatelessWidget {


  bodyWidget(BuildContext context) => Stack(
    children:<Widget>[
      Positioned(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width - 20,
        left: 10.0,
        top: MediaQuery.of(context).size.height * 0.1,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              SizedBox(
                height: 70.0,
              ),

              Text(
                'POKEMON',//pokemon.name
                style:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),

              Text("Height: 150.0"),

              Text("Weight: 200.0"),

              Text(
                "Types",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Fire Types'),
                  Text('Legend Types')
                ],

              ),

              Text("Weakness",
                  style: TextStyle(fontWeight: FontWeight.bold)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Text('Water Types'),
                  Text('Rock Types')

                ],


              ),

              Text("Next Evolution",
                  style: TextStyle(fontWeight: FontWeight.bold)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Text('Charmaleon'),
                  Text('Charizar')

                ],

              ),

            ],
          ),
        ),
      ),


    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text('Charmander'),
      ),
      body: bodyWidget(context),
    );
  }


}