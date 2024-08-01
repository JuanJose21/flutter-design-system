# Flutter Design System

Flutter Design System es un paquete de Flutter que proporciona una colección de componentes reutilizables para acelerar el desarrollo de tu aplicación. Incluye widgets comunes como botones, campos de texto personalizados, y más.

## Instalación

1. Agrega esta línea a tu archivo `pubspec.yaml` en la sección de dependencias:

   ```yaml
   dependencies:
     flutter_design_system:
       git:
         url: https://github.com/JuanJose21/flutter-design-system
         ref: master
   ```

2. Instala las dependencias:
   ```bash
   flutter pub get
   ```

## Uso

Importa el paquete en tu archivo de Dart donde quieras utilizar los componentes:

```dart
import 'package:flutter_design_system/flutter_design_system.dart';
```

### Componentes Disponibles

#### CustomButton

Un botón personalizado con estilo predefinido.

**Uso:**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_design_system/flutter_design_system.dart';

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Screen'),
      ),
      body: Center(
        child: CustomButton(
          text: 'Click Me',
          onPressed: () {
            print('Button Pressed!');
          },
        ),
      ),
    );
  }
}
```

#### CustomTextField

Un campo de texto personalizado con estilo predefinido.

**Uso:**

```dart
import 'package:flutter/material.dart';
import 'package:flutter_design_system/flutter_design_system.dart';

class MyFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Enter your text',
            ),
          ],
        ),
      ),
    );
  }
}
```

### Más Componentes

Consulta la documentación completa y los ejemplos de uso para cada componente en el [repositorio de GitHub](https://github.com/JuanJose21/flutter-design-system).

## Contribuciones

¡Las contribuciones son bienvenidas! Si encuentras un problema o tienes una sugerencia, abre un issue o envía un pull request en el [repositorio de GitHub](https://github.com/JuanJose21/flutter-design-system).

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - consulta el archivo [LICENSE](LICENSE) para más detalles.
