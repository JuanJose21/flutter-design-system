import 'package:example/presentation/screens/atoms_screen.dart';
import 'package:example/presentation/screens/molecules_screen.dart';
import 'package:example/presentation/screens/organisms_screen.dart';
import 'package:example/presentation/screens/pages_screen.dart';
import 'package:example/presentation/screens/templates_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Design System'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: _buildCardList(context),
        ),
      )),
    );
  }

  /// Generates a list of cards with the data of the screens to navigate
  List<Widget> _buildCardList(BuildContext context) {
    final List<Map<String, dynamic>> cardData = [
      {
        'title': 'Atoms',
        'subtitle': 'En esta pantalla podrás ver los atomos',
        'screen': AtomsScreen(),
      },
      {
        'title': 'Molecules',
        'subtitle': 'En esta pantalla podrás ver las moléculas',
        'screen': MoleculesScreen(),
      },
      {
        'title': 'Organisms',
        'subtitle': 'En esta pantalla podrás ver los organismos',
        'screen': OrganismsScreen(),
      },
      {
        'title': 'Templates',
        'subtitle': 'En esta pantalla podrás ver las plantillas',
        'screen': TemplatesScreen(),
      },
      {
        'title': 'Pages',
        'subtitle': 'En esta pantalla podrás ver las páginas',
        'screen': const PagesScreen(),
      }
    ];

    return cardData
        .map(
          (data) => ListTile(
            tileColor: Colors.grey[200],
            selectedColor: Colors.grey[300],
            title: Text(
              data['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(data['subtitle'],
                maxLines: 2, overflow: TextOverflow.ellipsis),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => data['screen']),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_right),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => data['screen']),
              ),
            ),
          ),
        )
        .toList();
  }
}
