import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:provider/provider.dart';
import 'package:todolist/model/todo_model.dart';
import 'package:todolist/provider1/todo_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final _textController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    //function for dialog
    Future<void> _showDialog() async {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("add todo list"),
            content: TextField(
              controller: _textController,
              decoration: InputDecoration(hintText: 'add todo'),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, 
                  child: Text('Cancel')),
              TextButton(onPressed: (){

                if(_textController.text.isEmpty){
                  return;
                }
                context.read<TODOProvider>().addTODO(new TODOModel(title: _textController.text, isCompleted: false));

                _textController.clear();



                Navigator.pop(context);
              },
                  child: Text('Submit')),
            ],
          );
        },
      );

    }



    //instanciate kore nilam
    final provider = Provider.of<TODOProvider>(context);
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Expanded(child: Container(
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))),
            child: Center(
              child: Text('Todo List', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.white,
              ),),
            ),
          )),
          Expanded(
            flex: 3,
              child: ListView.builder(itemBuilder: (context,itemIndex){
                return ListTile(
                  onTap: (){
                    provider.todoStatusChange(provider.allTODOList[itemIndex]);
                  },
                  leading: MSHCheckbox(value: provider.allTODOList[itemIndex].isCompleted,size: 20,
                    colorConfig: MSHColorConfig.fromCheckedUncheckedDisabled(checkedColor: Colors.black45),
                    style: MSHCheckboxStyle.stroke,
                    onChanged: (selected){
                      provider.todoStatusChange(provider.allTODOList[itemIndex]);
                    },
                  ),
                  title: Text(provider.allTODOList[itemIndex].title, style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: provider.allTODOList[itemIndex].isCompleted == true ? TextDecoration.lineThrough : null,
                  ),),
                  trailing: IconButton(onPressed: (){
                    provider.removeTODO(provider.allTODOList[itemIndex]);
                  },
                    icon: Icon(Icons.delete), color: Colors.redAccent,) ,
                );
              },
                itemCount: provider.allTODOList.length,
              ),
          ),
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        _showDialog();
      },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
