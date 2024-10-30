import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class TodoTile extends StatelessWidget {
  
  final String taskname;
  final bool taskcompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;


  TodoTile({super.key,
   required this.taskname,
   required this.taskcompleted,
   required this.onChanged,
   required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, right:25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),
          )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ///checkbox
              Checkbox(value: taskcompleted, onChanged: onChanged),
        
        
        
              Text(
                taskname,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  decoration: taskcompleted? TextDecoration.lineThrough: TextDecoration.none),),
            ],
          ),
        ),
      ),
    );
  }
}