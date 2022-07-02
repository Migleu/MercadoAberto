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
      backgroundColor: Color(0xfff5f5f5),  //Mudar a cor do Aplicativo
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black),  //Icone que vem antes do texto na AppBar

        backgroundColor: Color(0xfff5d415),  //cor da AppBar

        title: Text(widget.title,style: TextStyle(color: Colors.black),),
       
       
 actions:[
   
   Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
   child: Icon(Icons.shopping_cart_outlined,color: Colors.black),  //icone que vem depois do texto na AppBar
   ),
 ],


     bottom: PreferredSize(
     preferredSize: Size.fromHeight(50),
     child: Row(
       children: [
         Padding(padding: EdgeInsets.fromLTRB(20, 10, 40, 5),
         child: Icon(Icons.pin_drop, size: 30),   //Icone antes do sub-texto da AppBar
         ),
         Text("Enviar para Mercado Aberto",style: TextStyle(fontSize: 20),),  //sub-texto da AppBar
       ],
     ),

     ),


      ),
      body: Container(  // criar um container

        height: 180,  // definir o tamanho do container

        decoration: BoxDecoration(  //decoração da box(container)
          gradient: LinearGradient(  //cor gradiante
            begin: Alignment.topCenter,  //definir o inicio da gradiante
            end: Alignment.bottomCenter,  //definir o final da gradiante
        colors:[  //cores da gradiante
           Color(0xfff5d415),
           Color(0xfff5f5f5),
        ]
        ),
        ),
      ),
    );
  }
}
