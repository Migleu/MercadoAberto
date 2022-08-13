import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/popup_endereco.dart';

class EnviarPara extends StatefulWidget {
  const EnviarPara({Key? key}) : super(key: key);

  @override
  _EnviarParaState createState() => _EnviarParaState();
}

class _EnviarParaState extends State<EnviarPara> {
  String texto = "";
  var content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Digite o CEP"),
                content: TextField(
                  controller: content,
                  maxLength: 9,
                ),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel")),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          texto = content.text;
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text("Ok")),
                ],
              );
            }),
      },
      child: Container(
        color: const Color(0xffffdb15),
        height: 40.0,
        child: Row(
          children: [
            Padding(padding: EdgeInsets.all(5)),
            Icon(
              Icons.pin_drop_outlined,
              size: 22,
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text("Enviar para: ${texto}"),
          ],
        ),
      ),
    );
  }
}
