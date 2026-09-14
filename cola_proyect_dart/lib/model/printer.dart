import 'document.dart';
import '../structures/queue.dart';

class Printer {
  String _brand;
  final Queue<Document> _documentQueue = Queue<Document>();

  Printer(this._brand);

  String get brand => _brand;
  Queue<Document> get documentQueue => _documentQueue;

  void addDocument(Document doc) {
    _documentQueue.push(doc);
  }

  void printNext() {
    _documentQueue.pull();
  }
}
