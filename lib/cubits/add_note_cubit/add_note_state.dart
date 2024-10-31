
abstract class AddNoteState {}       // parent State


class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {
  final String successMessage;

   AddNoteSuccess(this.successMessage);
   
}

class AddNoteFailure extends AddNoteState {
  final String errorMessage;

   AddNoteFailure(this.errorMessage);

}
