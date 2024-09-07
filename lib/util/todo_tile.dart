import 'package:flutter/material.dart';


class TodoTile extends StatelessWidget {


  const TodoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            ///checkbox
            Checkbox(value: false, onChanged: onChanged)



            Text("Make a schedule",style: TextStyle(color: Colors.white),),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(12),
        ),

      ),
    );
  }
}