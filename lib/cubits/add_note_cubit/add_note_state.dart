class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
 final String erorrMessage;

  AddNoteFailure(this.erorrMessage);
}
