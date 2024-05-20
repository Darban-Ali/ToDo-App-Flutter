import 'package:flutter/material.dart';
import '../models/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  final onEditItem;

  const ToDoItem({
    super.key,
    required this.todo,
    required this.onDeleteItem,
    required this.onToDoChanged,
    required this.onEditItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.blue,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isDone ? TextDecoration.lineThrough : null,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.all(0),
            margin: const EdgeInsets.symmetric(vertical: 5),
            height: 35,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Edit button
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 67, 133, 187),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 18,
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      onEditItem(todo); // Implement this function for editing
                    },
                  ),
                ),
                const SizedBox(
                    width: 8), // Add some spacing between the buttons
                // Delete button
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    color: Colors.white,
                    iconSize: 18,
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      onDeleteItem(todo.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
