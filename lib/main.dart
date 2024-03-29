import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/botao_categorias.dart';
import 'package:flutter_application_1/componentes/campo_pesquisa.dart';
import 'package:flutter_application_1/componentes/card_frete_gratis.dart';
import 'package:flutter_application_1/componentes/card_assinatura.dart';
import 'package:flutter_application_1/componentes/enviar_para.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Aberto'),
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        elevation: 0,
        backgroundColor:const Color(0xffffdb15),
        leading: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
        actions: const [
          CampoPesquisa(),


          Padding(padding : EdgeInsets.all(6)),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 32,
            ),
          ),
          Padding(padding: EdgeInsets.all(6)),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: 

         EnviarPara(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset(0.5, 0.2),
            colors: [
              Color(0xffffdb15),
              Color(0xfff5f5f5),
            ],
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(3),
              height: 180,
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP650326-MLA50239834698_062022-B.jpg',
              ),
            ),


              const Padding(padding: EdgeInsets.all(5)),       
              const CardAssinatura(
                titulo: "Assine o nivel 6 por R\$ 9,90/mês",
              ),
              const Padding(padding: EdgeInsets.all(5)),       
              const CardFreteGratis(),
              const Padding(padding: EdgeInsets.all(10)),


              Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [

                BotaoCategoria(
                  icone: Icons.smartphone,
                  sub: "Regarregar"
                ),
                
                BotaoCategoria(
                  icone: Icons.sell_outlined,
                  sub: "Ofertas"
                ),

                BotaoCategoria(
                  icone: Icons.shopping_basket_outlined,
                  sub: "Mercado"
                ),

                BotaoCategoria(
                  icone: Icons.directions_car,
                  sub: "Veiculos"
                ),

                BotaoCategoria(
                  icone: Icons.add,
                  sub: "Ver mais"
                ),
              ],
              ),
            
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
