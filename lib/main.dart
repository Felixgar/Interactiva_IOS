import 'package:flutter/material.dart';

void main() => runApp(PizzApp());

class PizzApp extends StatefulWidget {
  @override
  _PizzAppState createState() => _PizzAppState();
}

class _PizzAppState extends State<PizzApp> {
  @override
  int _value = 1;
  int _value2 = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Hut',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pizza Hut'),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 0), child: Image.asset("assets/pizza.jpg", width: 500)),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre del cliente',
                ),
              ),
            ), //fin de padding
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nota especial',
                ),
              ),
            ), //fin de padding
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Cubiertos"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Sin cubiertos"),
                          value: 2,
                        )
                      ],
                      onChanged: (int value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text("Select item")),
                ), //fin de padding
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: DropdownButton(
                      value: _value2,
                      items: [
                        DropdownMenuItem(
                          child: Text("Ingrediente"),
                          value: 0,
                        ),
                        DropdownMenuItem(
                          child: Text("Pepperoni"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Champiñones"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("Jamon"),
                          value: 3,
                        )
                      ],
                      onChanged: (int value) {
                        setState(() {
                          _value2 = value;
                        });
                      },
                      hint: Text("Select item")),
                ), //fin de padding
              ], //fin de <widget>
            ), //fin de row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  onPressed: () {},
                ), //fin flat button
                RaisedButton(
                  child: Text(
                    'Confirmar',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  onPressed: () {},
                ), //fin raised button
              ], //fin de <widget>
            ), //fin de row
          ], //fin de <widget>
        ), //fin de column
      ), //fin de scaffold
    );
  }
}
