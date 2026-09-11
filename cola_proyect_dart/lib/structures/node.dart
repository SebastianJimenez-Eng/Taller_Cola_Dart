class Node<T> {
  T _data;
  Node<T>? _next;

  Node(this._data);

  T get data => _data;

  Node<T>? get next => _next;

  set data(T newData) {
    _data = newData;
  }

  set next(Node<T>? newNext) {
    _next = newNext;
  }
}
