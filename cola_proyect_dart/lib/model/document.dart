class Document {
  String _name;
  String _type;

  Document(this._name, this._type) {
    if (_name.isEmpty) {
      throw FormatException('El nombre del documento no puede estar vacío.');
    }
    if (_type.isEmpty) {
      throw FormatException('El tipo de documento es obligatorio.');
    }
  }


    String get name => _name;
    String get type => _type;

}