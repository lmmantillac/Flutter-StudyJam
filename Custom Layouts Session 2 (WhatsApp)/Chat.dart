import 'package:flutter/material.dart';


//Constructor del layout chat

class Chat extends StatelessWidget{

  String _titulo;

  Chat(String t){
    _titulo=t;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _titulo,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          title:Text(_titulo,style: TextStyle(color: Colors.white),),

          ///el leading es un objeto parte del AppBar, este se encuentra al lado
          ///izquiero del AppBar, usualmente se utiliza para representar menus o
          ///botones de regreso
          leading: IconButton(icon: Icon(Icons.arrow_back),

              //Funcion que hara que retornemos al Widget del que venimos, al ser
              //un boton utilizaremos el metodo onPressed()
              onPressed: (){
                //Widget de navegacion que nos hara la navegacion entre rutas,
                //en este caso el widget del que provenimos (context)
                Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.videocam), onPressed: (){
              //los metodos onPressed, onTap, etc
              ///no necesariamente deben desplazarnos entre rutas, en algunos casos
              ///pueden realizar acciones, ej. incrementar un contador, realizar una
              ///operacion matematica....
              ///en nuestro caso haremos que imprima el nombre del icono que fue presionado
              print('videocam pressed');}),
            IconButton(icon: Icon(Icons.call), onPressed: (){print('call presed');}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: (){print('more pressed');}),
          ],
        ),
        body: Container(
          color: Colors.blueGrey[50],
        ),
      ),
    );
  }
}