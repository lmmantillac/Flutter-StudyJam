import 'package:flutter/material.dart';

class Contacto extends StatelessWidget{

  String _hora='';
  String _emisor='';
  @override

  Contacto(String h, String e){
    _hora=h;
    _emisor=e;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 250.0,
        padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0),
        child: Column(
          children: <Widget>[
            Text(_emisor,style: TextStyle(color:Colors.black,fontSize: 20.0),textAlign: TextAlign.left,),
            Text(_hora,style: TextStyle(color: Colors.black54),textAlign: TextAlign.left,),
          ],
        )
    );
  }
}

class elementoLista extends StatelessWidget{

  String _hora='';
  String _emisor='';
  Contacto _contacto;
  //Color _colorImagen;

  @override

  elementoLista(String h, String e){
    _hora=h;
    _emisor=e;
    // _colorImagen=c;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:65.0,
      width: 300.0,
      child: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top:2.0,bottom: 2.0),
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color:Colors.grey,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              _contacto=new Contacto(_hora,_emisor),
            ],
          ),
          Divider(height: 10.0,),
        ],
      ),
    );
  }
}




class MiEstado extends StatelessWidget{

  String _hora;
  Contacto _contacto;

  MiEstado(String h){
    _hora=h;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width:250.0,
      child:Row(
        children: <Widget>[
          Container(
            //padding: EdgeInsets.only(top:2.0,bottom: 2.0),
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color:Colors.grey,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          _contacto=new Contacto(_hora,"My Status"),
          Center(
            child: Icon(Icons.more_horiz,color: Colors.teal[800],size: 25.0,),
          ),
        ],
      ),
    );
  }
}

class ContenedorEstados extends StatelessWidget{

  String _emisor;
  String _hora;

  ContenedorEstados(String e, String h){
    _emisor=e;
    _hora=h;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 0.0),
      child:elementoLista(_emisor,_hora),
    );
  }
}


class VentanaEstados extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
      Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      child: MiEstado("Today, 8:00 PM"),
    ),
      Container(
        height: 25.0,
        color: Colors.grey[300],
        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 3.0),
        child: Text('Viewed updates',style: TextStyle(fontSize: 15.0),),
      ),
        ContenedorEstados("3 minutes ago","John"),
        ContenedorEstados("45 minutes ago","Papa"),
        ContenedorEstados("Today, 12:19 AM","Anibal"),
      ]
    );
  }
}