import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  //Primera forma: usando un controller
  TextEditingController _controller = TextEditingController();

  // Segunda forma: metodo y variable, necesarios para el widget TextField
  String valueOnChange = '';

  _onChanged(String value) {
    setState(() {
      valueOnChange = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final logo = Center(
      child: Image.asset(
        'assets/logo.png',
        height: 200.0,
      ),
    );

    final user = Container(
      padding: EdgeInsets.only(right: 32.0, left: 32.0, bottom: 16.0),
      child: TextField(
        controller: _controller,
        //llamar al metodo onChanged
        onChanged: _onChanged,
        // otra forma de captar datos
        // onSubmitted:,
      ),
    );

    var mostrar = Container(
      // mostrar con TextEditingController
      //child: Text(_controller.text),
      // mostrar con ValueChanged
      child: Text(valueOnChange),
    );

    final boton = RaisedButton(
      onPressed: () {
        print(_controller.text);
      },
      child: Text('Login'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: <Widget>[
          logo,
          user,
          boton,
          mostrar,
        ],
      ),
    );
  }
}
