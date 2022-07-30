import 'package:flutter/material.dart';

class EnviarPara extends StatefulWidget {
  const EnviarPara({ Key? key }) : super(key: key);

  @override
  _EnviarParaState createState() => _EnviarParaState();
}

class _EnviarParaState extends State<EnviarPara> {

bool selecionado = false;
String texto = "Casa";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    
       onTap: () => {  
        setState(() => {
             selecionado = !selecionado
        }),
      },

      child: Container(

        color:const Color (0xffffdb15),
        height: 40.0,
        child: Row(
          children:  [
            Padding(padding: EdgeInsets.all(5)),
            Icon(
              Icons.pin_drop_outlined,
              size: 22,
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text("Enviar para: "),
            Visibility(child: Text(texto), visible: selecionado,) 
          ],
        ),
      ),
    );
  }
}