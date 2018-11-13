import 'package:custom_layouts/VentanaChats.dart';
import 'package:custom_layouts/VentanaEstados.dart';
import 'package:custom_layouts/VentanaLlamadas.dart';
import 'package:flutter/material.dart';


//constructor de la App
void main()=> runApp(LayoutPrincipal());



///Layout donde se implementaran los Widgets
///este es de clase estateful por el tab bar, este debe tomar diferentes estados
class Layout extends StatefulWidget{
  @override
  _tabState createState()=>_tabState();
}

class _tabState extends State<Layout>with SingleTickerProviderStateMixin{
  @override
  //el controller nos ayudara a tener el puntero de los tabs
  TabController _controller;


  //estado inicial de nuestro controlador de tabs
  void initState(){
    _controller = new TabController(length: 3,vsync: this);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        ///los actions son elementos de los tabs bar que se acomodan del lado derecho del AppBar
        ///en este caso utilizaremos iconos
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.white,))
        ],
        //Tab bar que se situara debajo del AppBar
        bottom: TabBar(
            indicatorColor: Colors.white,controller: _controller,

            //Tabs (titulos, solo textos) del tab Bar en este caso 3
            tabs: <Widget>[
              Tab(child: Text('CHATS',style: TextStyle(color: Colors.white),),),
              Tab(child: Text('ESTADOS',style: TextStyle(color: Colors.white),),),
              Tab(child: Text('LLAMADAS',style: TextStyle(color: Colors.white),),)
        ]),
      ),

      ///implementacion de los tabs(layouts), donde estara nuestro contenido de la App
      /// ambos (TabBar como TabBarView deben tener el mismo controlador, de esta
      /// manera controlamos que ambos tengan el mismo estado)
      body: TabBarView(
          controller: _controller,
          children: <Widget>[

            ///Solo el layout de chats sera creado y pensado
            ///los demas layouts (Estados y Llamadas), tiene la misma forma
            ///tanto en sus estructuras como en sus widgets, solo tienen pequeñas
            ///variaciones
            new VentanaChats(),
            new VentanaEstados(), //esta ventana no funciona
            new VentanaLlamadas(),
          ]),
    );
  }
}

//layout donde se creara toda la App
class LayoutPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Layouts',
      home: Layout(),
    );
  }
}