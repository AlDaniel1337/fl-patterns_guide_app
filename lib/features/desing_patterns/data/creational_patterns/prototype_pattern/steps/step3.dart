String step3 = """
### Uso.

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final usuario1 = Usuario(
      nombre: "Aldo",
      edad: 30,
      avatarUrl: "https://via.placeholder.com/150",
    );

    // Clonado exacto
    final usuario2 = usuario1.clone();

    // Clonado con variaciones
    final usuario3 = usuario1.copyWith(nombre: "Daniel", edad: 25);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Prototype en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserCard(usuario: usuario1),
              const SizedBox(height: 20),
              UserCard(usuario: usuario2),
              const SizedBox(height: 20),
              UserCard(usuario: usuario3),
            ],
          ),
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final Usuario usuario;
  const UserCard({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(usuario.avatarUrl)),
        title: Text(usuario.nombre),
        subtitle: Text("Edad: \${usuario.edad}"),
      ),
    );
  }
}
```
""";
