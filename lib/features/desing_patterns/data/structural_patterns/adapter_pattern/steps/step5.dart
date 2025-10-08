String step5 = """
### Uso.
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos modelo interno
    IUser usuario1 = Usuario(
      nombre: "Aldo",
      edad: 30,
      avatarUrl: "https://via.placeholder.com/150",
    );

    // Usamos servicio externo con Adapter
    ExternalUserService external = ExternalUserService(
      fullName: "Daniel Márquez",
      picture: "https://via.placeholder.com/150/0000FF",
      birthYear: "1995",
    );
    IUser usuario2 = ExternalUserAdapter(external);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Adapter en Flutter")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserCard(usuario: usuario1),
              const SizedBox(height: 20),
              UserCard(usuario: usuario2),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Widget cliente que espera IUser**
```dart
class UserCard extends StatelessWidget {
  final IUser usuario;
  const UserCard({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(usuario.getAvatarUrl())),
        title: Text(usuario.getNombre()),
        subtitle: Text("Edad: \${usuario.getEdad()}"),
      ),
    );
  }
}
```
""";