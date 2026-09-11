import 'node.dart';

class Queue<T> {
  Node<T>? _front;
  Node<T>? _rear;

  void push(T value) {
    Node<T> newNode = Node(value);

    if (isEmpty()) {
      _front = newNode;
      _rear = newNode;
    } else {
      _rear!.next = newNode;
      _rear = newNode;
    }
  }

  T pull() {
    if (isEmpty()) {
      throw Exception("La cola está vacía");
    }

    T value = _front!.data;
    _front = _front!.next;

    if (_front == null) {
      _rear = null;
    }

    return value;
  }

  T peek() {
    if (isEmpty()) {
      throw Exception("La cola está vacía");
    }
    return _front!.data;
  }

  bool isEmpty() {
    return _front == null;
  }
}
