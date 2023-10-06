import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Facturas'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController textFieldController = TextEditingController(text: '0001');
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nº Factura:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 10), // Espacio entre el Label y el TextField
              Flexible(
                child: TextField(
                  controller: textFieldController,
                  enabled: false,
                  onChanged: (text) {
                    setState(() {
                      inputValue = text;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Ingrese un valor',
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nº Factura:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(width: 10), // Espacio entre el Label y el TextField
              Flexible(
                child: TextField(
                  controller: textFieldController,
                  enabled: false,
                  onChanged: (text) {
                    setState(() {
                      inputValue = text;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Ingrese un valor',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
