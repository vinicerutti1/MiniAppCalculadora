import 'package:flutter/material.dart';
import '../screens/welcome_screen.dart';
import '../screens/sorteio_screen.dart';
import '../screens/sobre_screen.dart';
import '../screens/login_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(child: FlutterLogo(size: 72)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Boas-vindas'),
              onTap: () => Navigator.pushReplacementNamed(context, WelcomeScreen.route),
            ),
            ListTile(
              leading: const Icon(Icons.casino),
              title: const Text('Sorteio'),
              onTap: () => Navigator.pushReplacementNamed(context, SorteioScreen.route),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Sobre'),
              onTap: () => Navigator.pushReplacementNamed(context, SobreScreen.route),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.route,
                    (route) => false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
