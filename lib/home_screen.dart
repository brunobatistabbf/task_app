import 'package:flutter/material.dart';
import 'package:task_app/cadastro_screen.dart';

import 'task.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task App"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          Task task = await Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroScreen()));
          //Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => CadastroScreen()));
          //Navigator.pushNamed(context, "/cadastro");
          if (task != null) {
            //Adiciona task a lista 
          }
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
