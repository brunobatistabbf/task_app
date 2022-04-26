import 'package:flutter/material.dart';
import 'package:task_app/cadastro_screen.dart';
import 'task.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> _lista = List<Task>.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task App"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.separated(
          itemCount: _lista.length,
          separatorBuilder: (context, position) => Divider(),
          itemBuilder: (context, position) {
            Task item = _lista.elementAt(position);
            return ListTile(
              title: Text(
                item.texto,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: item.done
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
              trailing: Icon(
                Icons.check,
                size: 30,
                color: item.done ? Colors.green : Colors.grey,
              ),
              onTap: () {
                setState(() {
                  item.changeState();
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            Task task = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => CadastroScreen()));
            //Navigator.push(context,
            //   MaterialPageRoute(builder: (context) => CadastroScreen()));
            //Navigator.pushNamed(context, "/cadastro");
            if (task != null) {
              //Adiciona task a lista
              setState(() {
                _lista.add(task);
              });
            }
          } catch (error) {
            print(error.toString());
          }
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
