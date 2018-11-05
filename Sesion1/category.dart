/*En esta clase definiremos las características que tendrá
* nuestro objeto Category, definiremos los atriutod y la estructura
* que tendra el Widget*/

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

/*Variables constantes*/
final _rowHeight = 100.0;//para el alto de cada Widget
final _borderRadius = BorderRadius.circular(_rowHeight/2);//para la curva de InkWell

class Category extends StatelessWidget{
  /*Atributos de la clase*/
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  /*contructor, hacemos referencia a los atributos que
  * nos mandarán an el momento de crear una instancia,
  * ademas nos aseguramos que los valores que nos pasen
  * no sean nulos*/
  const Category({
  Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  }): assert (name != null),
      assert (color != null),
      assert (iconLocation != null),
      super( key : key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:  Colors.transparent,
      child:  Container(
        height: _rowHeight,//alto del Widget
        child: InkWell(
          borderRadius: _borderRadius,//curva
          splashColor: color,//color al presionar tiempo corto
          highlightColor: color,//color al presionar tiempo largo, puede cabiar por Colors.blue para notar la diferencia

          /*onTap es importante, le estamos dando la funcion
          * de responder al tacto*/
          onTap: (){
          },

          child:  Padding(
              padding: EdgeInsets.all(8.0),//espacio con el lado izquierdo
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),//espacio con el lado izquierdo

                  /*se le mantadará como atributo a iconLocation
                  * este fue definido en la linea 16*/
                  child: Icon(
                    iconLocation,
                    size: 40.0,
                  ),
                ),

                /*se le mantadará como atributo a name
                * este fue definido en la linea 14*/
                Center(
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.headline,
                  ),

                ),

              ],

            ),
          ),

        ),

      ),

    );
  }

}