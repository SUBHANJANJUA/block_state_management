import 'package:block_practice/boc/todo/to_do_bloc.dart';
import 'package:block_practice/boc/todo/to_do_event.dart';
import 'package:block_practice/boc/todo/to_do_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To-Do Screen'), centerTitle: true),
      body: BlocBuilder<ToDoBloc, ToDoState>(
        builder: (context, state) {
          if (state.items.isEmpty) {
            return const Center(child: Text('No To-Do Items'));
          } else {
            return ListView.builder(
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.items[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      context.read<ToDoBloc>().add(
                        RemoveToDo(itemId: state.items[index]),
                      );
                    },
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 10; i++) {
            context.read<ToDoBloc>().add(
              AddToDo(items: ['To-Do Item ${i + 1}']),
            );
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
