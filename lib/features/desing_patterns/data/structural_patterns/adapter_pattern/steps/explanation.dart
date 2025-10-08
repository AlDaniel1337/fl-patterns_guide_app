String explanation = """
### Explicación rápida:
`IUser` → interfaz común que el cliente espera.
`Usuario` → clase interna ya compatible.
`ExternalUserService` → clase externa incompatible.
`ExternalUserAdapter` → traduce de ExternalUserService a IUser.
`UserCard` → cliente que solo conoce IUser y funciona con ambos tipos.
""";