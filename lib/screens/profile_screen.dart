import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  const ProfileScreen({super.key, 
    required this.name,
    required this.age,
    required this.occupation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mostrar los datos en una sola fila
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text('Nombre: $name', style: const TextStyle(fontSize: 18)),
                ),
                Expanded(
                  child: Text('Edad: $age', style: const TextStyle(fontSize: 18)),
                ),
                Expanded(
                  child: Text('Ocupación: $occupation', style: const TextStyle(fontSize: 18)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Regresar a Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
