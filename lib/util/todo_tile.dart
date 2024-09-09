import 'package:flutter/material.dart';


class TodoTile extends StatelessWidget {
  
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;


  TodoTile({super.key,
   required this.taskname,
   required this.taskcompleted,
   required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: EdgeInsets.all(18),
        child: Row(
          children: [
            ///checkbox
            Checkbox(value: taskcompleted, onChanged: onChanged),



            Text(taskname,style: TextStyle(color: Colors.white,fontSize: 18),),
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