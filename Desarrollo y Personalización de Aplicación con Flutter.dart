
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Primera App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 40, 190, 200),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mi primera aplicación Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _nuevotexto = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _mostrarMensaje() {
    setState(() {
      _nuevotexto =
          'Soooo, Sally can wait, she knows it is too late '
          'as she is walking on by. My soul slides away, '
          'but dont look back in anger, I heard you say. '
          '\n\n- Oasis';
    });

    print('Mensaje mostrado correctamente');
  }

  void _limpiarMensaje() {
    setState(() {
      _nuevotexto = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 250, 250),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 90, 210, 215),
        title: Text(widget.title),
        centerTitle: true,
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.flutter_dash,
                size: 75,
                color: Colors.teal,
              ),

              const SizedBox(height: 15),

              const Text(
                '¡Hola, bienvenido! :)',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Esta es mi primera aplicación en Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              const Text(
                'Contador de clics:',
                style: TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 10),

              Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),

              const SizedBox(height: 25),

              ElevatedButton.icon(
                onPressed: _mostrarMensaje,
                icon: const Icon(Icons.music_note),
                label: const Text('Mostrar mensaje'),
              ),

              const SizedBox(height: 15),

              if (_nuevotexto.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 220, 245, 245),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    _nuevotexto,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                ),

              const SizedBox(height: 15),

              TextButton(
                onPressed: _limpiarMensaje,
                child: const Text('Limpiar mensaje'),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Aumentar contador',
        backgroundColor: const Color.fromARGB(255, 90, 210, 215),
        child: const Icon(
          Icons.star,
          size: 30,
        ),
      ),
    );
  }
}
