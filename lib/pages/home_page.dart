import 'package:flutter/material.dart';
import 'package:to_do_app/util/dialog_box.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();


  List toDolist=[
    ["MAKE TUTORAIL",false],
    ["do exercise",true],
  ];

  void checkBoxChanged(bool? value,int index){
    setState(() {
      toDolist[index][1] = !toDolist[index][1];
    });
  }

  void saveNewTask(){
    setState(() {
      toDolist.add([ _controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }


  void deleteTask(int index){
    setState(() {
      toDolist.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("TO DO LIST",style: TextStyle(color: Colors.white,fontSize: 24),)),
        elevation: 100,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: toDolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskname: toDolist[index][0],
             taskcompleted: toDolist[index][1],
              onChanged: (value)=> checkBoxChanged(value, index),
              deleteFunction: (context) => deleteTask(index),
          );
        },
        ),
    );
  }
}