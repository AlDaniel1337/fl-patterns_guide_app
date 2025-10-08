String step4 = """
### Adapter.

```dart
class ExternalUserAdapter implements IUser {
  final ExternalUserService externalUser;

  ExternalUserAdapter(this.externalUser);

  @override
  String getNombre() => externalUser.fullName;

  @override
  int getEdad() {
    final birthYear = int.tryParse(externalUser.birthYear) ?? 2000;
    return DateTime.now().year - birthYear;
  }

  @override
  String getAvatarUrl() => externalUser.picture;
}
```
""";