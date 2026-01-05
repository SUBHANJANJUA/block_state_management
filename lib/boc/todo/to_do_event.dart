import 'package:equatable/equatable.dart';

abstract class ToDoEvent extends Equatable {
  const ToDoEvent();

  @override
  List<Object> get props => [];
}

class AddToDo extends ToDoEvent {
  final List<String> items;
  const AddToDo({this.items = const []});

  @override
  List<Object> get props => [items];
}

class RemoveToDo extends ToDoEvent {
  final Object itemId;
  const RemoveToDo({required this.itemId});

  @override
  List<Object> get props => [itemId];
}
