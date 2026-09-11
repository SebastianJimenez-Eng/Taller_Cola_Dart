import 'document.dart';
import '../structures/queue.dart';

class Printer {
  String _brand;
  final Queue<Document> _documentQueue = Queue<Document>();

  Printer(this._brand);

  String get brand => _brand;

  void addDocument(Document doc) {
    _documentQueue.push(doc); 
    print('[$_brand]: añadió "${doc.name}" a la cola');
  }

  void printNext() {
    if (_documentQueue.isEmpty()) { 
      throw Exception("No hay documentos en la cola de espera");
    }
 
    print('[$_brand]: Imprimiendo  "${_documentQueue.peek()?.name}".(${_documentQueue.peek()?.type})...');
    _documentQueue.pull();
  }
}