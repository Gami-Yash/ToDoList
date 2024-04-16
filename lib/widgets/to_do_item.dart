// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:to_do_app/constants/colors.dart';
import 'package:to_do_app/model/todo.dart';

class ToDoList extends StatelessWidget {
  final ToDo todo;
  final onToDochanged;
  final onDeleteItem;


  const ToDoList({Key? key, required this.todo, required this.onToDochanged, required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          // print('Tapped oooo');
          onToDochanged(todo);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(todo.isDone? Icons.check_box : Icons.check_box_outline_blank, color: tdBlue,),
        title: Text(todo.todoText!,style: TextStyle(
          fontSize: 16,
          color: tdBlack, 
          decoration: todo.isDone? TextDecoration.lineThrough : null, 
          ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(Icons.delete),
            iconSize: 18,
            color: Colors.white,
            onPressed: () {
              // print('clicked on delete');
              onDeleteItem(todo.id);
            },
          )
        ),
      ),
    );
  }
}

// if(){

// }
// 
// 