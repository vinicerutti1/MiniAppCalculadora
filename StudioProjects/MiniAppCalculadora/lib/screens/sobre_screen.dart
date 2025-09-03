import 'package:flutter/material.dart';
import '../components/app_drawer.dart';

class SobreScreen extends StatelessWidget {
  static const route = '/sobre';
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sobre o Sistema')),
      drawer: const AppDrawer(),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                FlutterLogo(size: 80),
                SizedBox(height: 20),
                Text(
                  'App desenvolvido em sala de aula para praticar Flutter: '
                      'formulários, navegação, componentes reutilizáveis e feedback ao usuário.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Text('Desenvolvedor: -João Aumondi',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
