import 'dart:io';

import '../lib/model/document.dart';
import '../lib/model/printer.dart';
import '../lib/structures/queue.dart';

void main(List<String> arguments) {
  Printer printer = Printer("SAMSUNG");
  String input = '0';

  while (input != "3") {
    print("IMPRESORA\n\n1: Agregar documento\n2: Imprimir document\n3: Salir");
    input = stdin.readLineSync()!;

    switch (input) {
      case "1":
        print("Ingresa el nombre del documento:");
        String name = stdin.readLineSync()!;
        print("Ingresa el tipo (ej. pdf, docx):");
        String type = stdin.readLineSync()!;
        try {
          printer.addDocument(Document(name, type));
        } catch (e) {
          print("Error: $e");
        }
        break;

      case "2":
        try {
          print(
            '${printer.brand} : Imprimiendo ${printer.documentQueue.peek()?.name}.${printer.documentQueue.peek()?.type}',
          );
          printer.printNext();
        } catch (e) {
          print("$e");
        }
        break;

      case "3":
        print("Apagando...");
        input = "3";
        break;

      default:
        print("Opciones validas: 1, 2, 3.");
    }
  }
}
