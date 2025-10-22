import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'subhan_event.dart';
part 'subhan_state.dart';

class SubhanBloc extends Bloc<SubhanEvent, SubhanState> {
  SubhanBloc() : super(SubhanInitial()) {
    on<SubhanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
