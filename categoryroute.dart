/*En esta clase crearemos las instancias de nuestro objeto Category*/

import 'package:flutter/material.dart';
import 'package:helloflutter/category.dart';

/*podemos medir la dencidad de los colores,
estos van desde 0 hasta 200*/
final _backgroudColor =Colors.green[90];

 class CategoryRoute extends StatelessWidget{
   const CategoryRoute ();

  /*En este metodo construimos los Widgets*/
   Widget _buildWidget (List<Widget> categories){
     return ListView.builder(
       itemBuilder: (BuildContext context, int index)=> categories[index],
       itemCount: categories.length,
     );
   }


   @override
   Widget build(BuildContext context) {
     /*definimos una lista de tipo Category*/
     final categories  = <Category>[];

     /*Creamos 10 instacias de category*/
     for(var i =0; i<10; i++){
       categories.add(
         Category(
             name: 'GDG LaPaz',
             color: Colors.green,
             iconLocation: Icons.local_pizza)
       );
     }

     /*Creamos nuestro ListView (cuerpo de la aplicacion)*/
     final ListView = Container(
       color: _backgroudColor,
       padding: EdgeInsets.symmetric(horizontal: 8.0),
       child: _buildWidget(categories),
     );

     /*Creamos nuestro AppBar (encabezado de la aplicacion)*/
     final appBar = AppBar(
       elevation: 10.0,
       centerTitle: true,
       title: Text('Flutter'),
     );

    /*Retornamos un objeto de tipo Scaffold,
    que tendra como atributos a:
    appBar y body, estos seran mostrados en el
    método main*/
    return Scaffold(
      appBar: appBar,
      body: ListView,
    );
  }

 }