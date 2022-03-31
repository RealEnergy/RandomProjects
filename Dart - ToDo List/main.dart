import 'dart:convert';
import "dart:io";

class Note {
  String title, description, expiredate;
  Note(
      {this.title = "No title",
      this.description = "No description",
      this.expiredate = "No expiration date"});
  @override
  String toString() => '$title : $description. Expiration date: $expiredate';
}

class FileInteractor {
  String filePath;
  var file;
  FileInteractor(this.filePath) {
    file = File(filePath);
  }

  void overwriteContent(String toWrite) {
    file.writeAsString(toWrite);
  }
}

void main(List<String> args) {
  var f = FileInteractor("./todo.txt");
  print("Adding Note 1");
  var n1 = Note(title: "Learn a new language", description: "Maybe Greek");
  f.overwriteContent(n1.toString());
  print("Adding Note 2");
  var n2 = Note(title: "Travel somewhere nice", description: "Maybe Greece");
  var t = f.file.readAsString(encoding: ascii);
  var notes = t . n2.toString();
  f.overwriteContent(notes);
  print("Attempting to retrieve notes from file");
  var r = f.file.readAsString(encoding: ascii);
  print("Notes retrieved. Printing...\n");
  print(r);
}
