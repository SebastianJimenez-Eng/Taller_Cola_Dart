# Taller_Cola_Dart
**Implementación de colas en Dart**

**Descripción:** Aplicación en consola que gestiona el trabajo de una fotocopiadora. Implementa una cola FIFO (First In, First Out) para procesar las solicitudes de impresión en orden de llegada.

* **Estructura utilizada:** Cola (Queue), para la gestión de turnos.
* **Lenguaje de programación utilizado:** Dart.
* **Paradigma:** Programación Orientada a Objetos (POO).
  

**Requisitos del sistema y software**

* **Software instalado:** Dart SDK (incluye el gestor de paquetes Pub).
* **Versión de la herramienta:** Dart SDK 3.13.3 (o superior).
* **Configuraciones requeridas:** Agregar la ruta de instalación del Dart SDK a las variables de entorno del sistema (`PATH`) para poder ejecutar comandos desde cualquier terminal.
* **Entorno de desarrollo utilizado:** Visual Studio Code con la extensión oficial de "Dart" instalada.
  
**Funcionamiento**

Esta aplicación requiere entrada interactiva por teclado (stdin) para funcionar correctamente, ya que solicita datos al usuario durante su ejecución (nombre y tipo del documento, selección de opciones del menú, etc.).

Por lo anterior, es indispensable ejecutarla desde una terminal real (como la terminal integrada de VS Code, CMD, PowerShell o una terminal de Linux/macOS). No se recomienda ejecutarla mediante botones de "Run" de editores en línea, sandbox de compiladores web o 
evaluadores automáticos que no soporten entrada estándar interactiva, ya que esto puede generar errores de ejecución o impedir el correcto funcionamiento del programa.

**Instrucciones de ejecución** Para iniciar la aplicación, abre la terminal integrada de Visual Studio Code (asegurándote de estar situado en la carpeta raíz del proyecto) y ejecuta el siguiente comando: dart run bin/cola_proyect_dart.dart

