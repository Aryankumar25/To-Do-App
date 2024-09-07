import 'package:flutter/material.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("TO DO LIST",style: TextStyle(color: Colors.white),)),
        elevation: 100,
      ),
      body: ListView(
        children: [
          TodoTile(),
        ],),
    );
  }
}