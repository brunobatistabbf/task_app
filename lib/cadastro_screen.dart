import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroScreen extends StatefulWidget {
  CadastroScreen({Key? key}) : super(key: key);

  @override
  State<CadastroScreen> createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  final _formalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Task"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
          key: _formalKey,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return "Preenchimento obrigatório";
                      }
                      if (value.toString().length < 3) {
                        return "Mínimo de 3 caracteres";
                      }
                    },
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: "Título",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide:
                              BorderSide(color: Colors.purple, width: 2)),
                    ),
                  )),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        _formalKey.currentState?.validate();
                      },
                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Cancelar",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                    ),
                  ))
                ],
              )
            ],
          )),
    );
  }
}
