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
      title: 'Gabriel Sarango S1',
      // REQUISITO: ThemeData con al menos 3 propiedades modificadas
      theme: ThemeData(
        useMaterial3: true, // Propiedad 1
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light, // Propiedad 2
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5), // Propiedad 3
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 18, color: Colors.indigo),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // REQUISITO: AppBar personalizada con action
      appBar: AppBar(
        title: const Text('Mi Perfil UIDE'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => debugPrint('Botón de ajustes presionado'),
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Widget 1: Imagen de red
          Image.network(
            'https://i.pinimg.com/736x/db/ae/13/dbae1315863572eac42a6ee6284479c3.jpg',
            height: 150,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.broken_image, size: 100),
          ),
          const SizedBox(height: 20),

          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.indigo, width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  Text(
                    'Gabriel Alejandro Sarango Zumba', // Nombre completo
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  Text('Cédula: 1105XXXXXX'), // Requisito: Número de cédula
                  Text(
                    'Carrera: Tecnologías de la Información',
                  ), // Requisito: Carrera
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Icon(Icons.school, size: 50, color: Colors.indigo),

          // Widget 4: Texto descriptivo
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Estudiante de quinto semestre semestre apasionado por el desarrollo Full-Stack y la Ciberseguridad.',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
