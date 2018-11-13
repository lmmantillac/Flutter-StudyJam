import 'package:custom_layouts/Chat.dart';
import 'package:flutter/material.dart';


//Constructor de los contactos (solo textos)

class Contacto extends StatelessWidget{

  String _mensaje='';
  String _emisor='';
  String _horaDeLlegada='';

  @override

  Contacto(String m, String e, String h){
    _mensaje=m;
    _emisor=e;
    _horaDeLlegada=h;
  }


  //la estructura es Column =>  (Row => (emisor, hora de llegada), mensaje)
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 200.0,
                child: Text(_emisor,style: TextStyle(color:Colors.black,fontSize: 20.0),),),
              Text(_horaDeLlegada,style: TextStyle(color:Colors.black54),),
            ],
          ),
          Container(
            width: 260.0,
            child:Text(_mensaje,style: TextStyle(color: Colors.black54),textAlign: TextAlign.left,),
          ),
        ],
      ),
    );
  }
}


//constructor del widget de mensaje

class elementoLista extends StatelessWidget{

  String _mensaje='';
  String _emisor='';
  String _horaDeLlegada='';
  //Color _colorImagen;
  Widget _chat;

  @override

  elementoLista(String m, String e, String h ){
    _mensaje=m;
    _emisor=e;
    _horaDeLlegada=h;
   // _colorImagen=c;
  }


  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:65.0,
        width: 300.0,
        child: ListView(
          children: <Widget>[
            ///en este caso utilizaremos el Widget InkWell, este nos ayudara a que
            ///el elemento (completo) funcione como un boton
            InkWell(
              child: Row(
                children: <Widget>[
                  Container(
                    //creacion del widget de foto de perfil

                    padding: EdgeInsets.only(top:2.0,bottom: 2.0),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color:Colors.grey,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),

                  //creamos un nuevo widget que contenga el contacto (solo textos)
                  Contacto(_mensaje,_emisor,_horaDeLlegada),
                ],
              ),

              ///cuando nuestro objeto sea tapeado (click), este debe enviarnos hacia una
              ///nueva ruta, en este caso el chat
              onTap: (){

                ///primero creamos el objeto chat
                _chat= new Chat(_emisor);
                //utilizamos el widget 'Navigator', este nos ayudara a desplazarnos
                //entre rutas
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> _chat, //en este caso nuestra ruta es '_chat'
                ));
              },
            ),
            //linea divisora entre elementos de una lista
            Divider(height: 10.0,),
          ],
        ),
    );
  }
}

//Constructor principal del layout

class VentanaChats extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),

      //cada elemento de la lista debe tener el mensaje, remitente y la hora de envio
      child: ListView(
        children: <Widget>[
          elementoLista("Hola","Mauricio","11:00 AM"),
          elementoLista("Estoy en el study jam","John","10:45 AM"),
          elementoLista(":D","Ariel","10:00 AM"),
          elementoLista("Buenos dias","Mama","08:00 AM"),
          elementoLista("Seamos solo amigos","Crush","11:00 PM")

        ],
      ),
    );
  }
}
