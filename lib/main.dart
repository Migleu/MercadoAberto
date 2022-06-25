import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercado Aberto',
      theme: ThemeData(
        primarySwatch: Colors.blue,


        
        // scaffoldBackgroundColor: Colors.black  \\mudar cor de fundo da pagina
      ),
      

      home: const MyHomePage(title: 'Mercado Aberto'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black),

        backgroundColor: Color(0xfff5d415),
        title: Text(widget.title,style: TextStyle(color: Colors.black),),
       
 actions:[
   Icon(Icons.shopping_cart,color: Colors.black),

 ],
      ),
      body: Column(
        children: [
          Container(
            child: Text("Enviar para Mercado Aberto"),
            width: 400,
            height: 20,
            color: Color(0xfff5d415),
          )
        ],
      ),
    );
  }
}
