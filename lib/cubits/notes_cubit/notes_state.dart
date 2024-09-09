
class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {

}

class NotesLoading extends NotesState {}

class NotesFailure extends NotesState {
  final String erorrMessage;

  NotesFailure(this.erorrMessage);
}
