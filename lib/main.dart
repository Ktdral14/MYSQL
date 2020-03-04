import 'package:flutter/material.dart';
import 'package:mysql/mysql.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ABC',
      home: Input(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {

  List<String> _inputs = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar datos'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          _crearInput('Ingrese el nombre'),
          Divider(color: Colors.transparent,),
          _crearInput('Ingrese su carrera'),
          Divider(color: Colors.transparent,),
          _crearInput('Ingrese su edad'),
          Divider(color: Colors.transparent,),
          _crearInput('Ingrese su calificacion'),
          Divider(color: Colors.transparent,),
          _crearBoton(),
        ],
      ),
    );
  }

  Widget _crearInput(String texto) {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: texto,
      ),
      onSubmitted: (valor) {
        _inputs.add(valor);
      },
    );
  }

  Widget _crearBoton() {
    return FlatButton(
      onPressed: (){
        insertarRegistro(_inputs);
      }, 
      child: Text('OK'),
      color: Colors.grey,
    );
  }

}