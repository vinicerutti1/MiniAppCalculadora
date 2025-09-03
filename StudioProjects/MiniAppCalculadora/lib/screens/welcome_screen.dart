import 'package:flutter/material.dart';
import '../components/app_drawer.dart';

class WelcomeScreen extends StatelessWidget {
  static const route = '/welcome'; // Nome usado nas rotas
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Boas-vindas')),
      drawer: const AppDrawer(), // Menu lateral reutilizável
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlutterLogo(size: 120), // Logo do Flutter (pode trocar depois por sua imagem)
            SizedBox(height: 16),
            Text(
              'Bem-vindo ao Mini App Flutter!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
