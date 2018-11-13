import 'package:flutter/material.dart';


class Contacto extends StatelessWidget{

  String _mensaje='';
  String _emisor='';
  IconData _icono;
  Color _color;
  @override

  Contacto(String m, String e,IconData i,Color c){
    _mensaje=m;
    _emisor=e;
    _icono=i;
    _color=c;
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 250.0,
      padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0),
      child: Column(
          children: <Widget>[
            Container(
              width: 250.0,
              child:Text(_emisor,style: TextStyle(color:Colors.black,fontSize: 20.0),textAlign: TextAlign.left,),
            ),
            Row(
              children: <Widget>[
                Icon(_icono,color: _color,size:15.0),
                Text(_mensaje,style: TextStyle(color: Colors.black54),textAlign: TextAlign.left,),
              ],
            ),
          ],
      )
    );
  }
}

class elementoLista extends StatelessWidget{

  String _mensaje='';
  String _emisor='';
  IconData _icono;
  Color _color;
  //Color _colorImagen;

  @override

  elementoLista(String m, String e,IconData i,Color c){
    _mensaje=m;
    _emisor=e;
    _icono=i;
    _color=c;
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
                Contacto(_mensaje,_emisor,_icono,_color),
                Center(
                  child: Icon(Icons.call,color: Colors.teal[800],size: 25.0,),
                ),
              ],
            ),
          //Divider(height: 10.0,),
        ],
      ),
    );
  }
}



class VentanaLlamadas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
      child: ListView(
        children: <Widget>[
          elementoLista("Today, 10:38 AM","John",Icons.call_received,Colors.green),
          Divider(height: 10.0,),
          elementoLista("October 29, 6:03 PM","Papa",Icons.call_received,Colors.red),
          Divider(height: 10.0,),
          elementoLista("September 11, 13:45 PM","Ariel",Icons.call_made,Colors.green),
          Divider(height: 10.0,),


        ],
      ),
    );
  }
}