import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet ID Card',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.teal[50],
      ),
      home: const PetIdCard(),
    );
  }
}

class PetIdCard extends StatelessWidget {
  const PetIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carnet de identificación'),
        backgroundColor: Colors.teal[700],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            elevation: 12,
            margin: const EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(color: Colors.teal.shade300, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 54,
                    backgroundColor: Colors.teal[100],
                    backgroundImage: const NetworkImage(
                      'https://images.unsplash.com/photo-1518717758536-85ae29035b6d?auto=format&fit=facearea&w=256&h=256&facepad=2.5',
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Tommy',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pets, color: Colors.teal[700]),
                      const SizedBox(width: 6),
                      const Text(
                        'Especie: Perro',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.badge, color: Colors.teal[700]),
                      const SizedBox(width: 6),
                      const Text(
                        'Raza: Criollo',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cake, color: Colors.teal[700]),
                      const SizedBox(width: 6),
                      const Text(
                        'Edad: 3 años',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.teal[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.phone, size: 20, color: Colors.teal),
                        SizedBox(width: 8),
                        Flexible(
                          child: Text(
                            'Contacto: 3136460357',
                            style: TextStyle(fontSize: 16, color: Colors.teal),
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VaccineCardScreen()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.vaccines, color: Colors.teal[800]),
                        const SizedBox(width: 8),
                        Text(
                          'Ver carnet de vacunas',
                          style: TextStyle(
                            color: Colors.teal[800],
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class VaccineCardScreen extends StatelessWidget {
  const VaccineCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carnet de Vacunas'),
        backgroundColor: Colors.teal[700],
      ),
      body: Center(
        child: Card(
          elevation: 10,
          margin: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.teal.shade300, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                const Text(
                  'Carnet de Vacunas',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const Divider(height: 24, thickness: 2),
                ListTile(
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: const Text('Rabia'),
                  subtitle: const Text('Fecha: 10/01/2025'),
                ),
                ListTile(
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: const Text('Parvovirus'),
                  subtitle: const Text('Fecha: 10/01/2025'),
                ),
                ListTile(
                  leading: const Icon(Icons.check_circle, color: Colors.green),
                  title: const Text('Moquillo'),
                  subtitle: const Text('Fecha: 10/01/2025'),
                ),
                const SizedBox(height: 12),
                TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Volver'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.teal[800],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
