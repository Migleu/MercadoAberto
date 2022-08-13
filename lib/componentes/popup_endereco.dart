import 'package:flutter/material.dart';

class popupEndereco extends StatefulWidget {
  popupEndereco({ Key? key, required this.text}) : super(key: key);
  String text = "";

  @override
  _popupEnderecoState createState() => _popupEnderecoState(texto: text);
}

class _popupEnderecoState extends State<popupEndereco> {
  _popupEnderecoState({ Key? key, required this.texto});
  final cont = TextEditingController();
  String texto = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Digite seu CEP'),
      
      content: TextField(
        controller: cont,
        maxLength: 9,
      ),
      
      actions: [
        TextButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          child: Text("Cancelar")
        ),
        
        TextButton(
          onPressed: (){
            setState(() {
              texto = cont.text;
            });
            Navigator.of(context).pop();
          }, 
          child: Text("ok")
        )
      ],
    );

  }
}