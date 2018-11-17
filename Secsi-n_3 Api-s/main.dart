import 'package:flutter/material.dart';
import 'package:clase2/pokedetail.dart';

void main() => runApp(MaterialApp(
  title: 'Poke App',
  home: HomePage(),
  debugShowCheckedModeBanner: false,
)
);

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PokeApp'),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),

      body: GridView.count(
        crossAxisCount: 2,

        children: <Widget>[
          Padding(padding: const EdgeInsets.all(2.0),
            child: InkWell(
              highlightColor: Colors.greenAccent,
              splashColor: Colors.greenAccent,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PokeDetail(
                              //pokemon: poke,
                            )));
              },

            ),


          ),

        ],



        //drawer: Drawer(),

      ),

    );
  }

}