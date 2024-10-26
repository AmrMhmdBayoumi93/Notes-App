
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {
  final String message;

   AddNoteSuccess(this.message);
   
}

class AddNoteFailure extends AddNoteState {
  final String message;

   AddNoteFailure(this.message);

}
