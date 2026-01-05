import 'package:bloc/bloc.dart';
import 'package:block_practice/boc/todo/to_do_event.dart';
import 'package:block_practice/boc/todo/to_do_state.dart';

class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
  final List<String> _toDoItems = [];
  ToDoBloc() : super(ToDoState()) {
    on<AddToDo>(_addToDo);
    on<RemoveToDo>(_removeToDo);
  }

  void _addToDo(AddToDo event, Emitter<ToDoState> emit) {
    _toDoItems.addAll(event.items);
    emit(state.copyWith(items: List.from(_toDoItems)));
  }

  void _removeToDo(RemoveToDo event, Emitter<ToDoState> emit) {
    _toDoItems.remove(event.itemId);
    emit(state.copyWith(items: List.from(_toDoItems)));
  }
}
