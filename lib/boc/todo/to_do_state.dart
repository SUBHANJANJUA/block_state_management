import 'package:equatable/equatable.dart';

class ToDoState extends Equatable {
  final List<String> items;
  const ToDoState({this.items = const []});

  ToDoState copyWith({List<String>? items}) {
    return ToDoState(items: items ?? this.items);
  }

  @override
  List<Object> get props => [items];
}
