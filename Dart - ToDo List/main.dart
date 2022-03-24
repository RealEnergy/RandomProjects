class Note {
  String title, description, expiredate;
  Note(
      {this.title = "No title",
      this.description = "No description",
      this.expiredate = "No expiration date"});
  @override
  String toString() => '$title : $description. Expiration date: $expiredate';
}

void main(List<String> args) {
  var list = [];
  var note1 = Note(title: "Study", description: "Learn a new language");
  list.add(note1);
  var note2 = Note(
      description: "Learn a new programming language", expiredate: "Tomorrow");
  list.add(note2);
  for (var note in list) {
    print(note);
  }
}
