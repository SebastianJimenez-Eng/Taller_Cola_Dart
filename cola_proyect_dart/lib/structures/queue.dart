import 'node.dart';

class Queue<T> {
  Node<T>? front;
  Node<T>? rear;

  void push(T value) {
    Node<T> newNode = Node(value);

    if (isEmpty()) {
      front = newNode;
      rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
  }

  T? pull() {
    if (isEmpty()) {
      print("La cola está vacía");
      return null;
    }

    T value = front!.data;
    front = front!.next;

    if (front == null) {
      rear = null;
    }

    return value;
  }

  T? peek() {
    if (isEmpty()) {
      print("La cola está vacía");
      return null;
    }
    return front!.data;
  }

  bool isEmpty() {
    return front == null;
  }
}
