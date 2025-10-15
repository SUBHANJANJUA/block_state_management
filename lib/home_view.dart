import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HapticFeedback.lightImpact();
          Person person = Person(name: 'Subhan', age: 24);
          Person person1 = Person(name: 'Subhan', age: 24);
          print(person.hashCode.toString());
          print(person1.hashCode.toString());

          print(person == person1);
        },
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final double age;
  Person({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}
