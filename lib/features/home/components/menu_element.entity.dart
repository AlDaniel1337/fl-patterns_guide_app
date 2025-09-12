import 'package:flutter/material.dart';

class MenuElement extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onPress;
   
  const MenuElement({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.icon,
    required this.onPress,
  });
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ),),
      subtitle: Text(subtitle),
      leading: Icon( icon ),
      onTap: onPress,
    );
  }
}