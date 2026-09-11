class Document {
  String _name;
  final String _type;

  Document(this._name, this._type);

  String get name => _name;

  String get type => _type;

  set name(String newName) {
    if (newName.isEmpty) {
      print('Error: El nombre del documento no puede estar vacío.');
    } else {
      _name = newName;
    }
  }
}
