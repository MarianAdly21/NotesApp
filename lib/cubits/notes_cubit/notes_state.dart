import 'package:notes_app/models/note_model.dart';

class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {
final  List<NoteModel> noteList;

  NotesSuccess(this.noteList);
}

class NotesLoading extends NotesState {}

class NotesFailure extends NotesState {
  final String erorrMessage;

  NotesFailure(this.erorrMessage);
}
