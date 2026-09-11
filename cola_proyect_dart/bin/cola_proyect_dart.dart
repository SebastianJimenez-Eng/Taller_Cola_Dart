import '../lib/structures/queue.dart';

void main(List<String> arguments) {
  Queue<int> cola = Queue<int>();

  print(cola.isEmpty()); // true

  cola.push(10);
  cola.push(20);
  cola.push(30);

  print(cola.peek()); // 10
  print(cola.pull()); // 10
  print(cola.pull()); // 20

  print(cola.isEmpty()); // false
  print(cola.pull()); // 30
  print(cola.isEmpty()); // true
}
