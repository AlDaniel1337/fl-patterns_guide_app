import 'package:flutter/material.dart';

class DynamicColoredText extends StatelessWidget {
  final String fullText;
  final List<String> highlightTexts; 
  final TextStyle baseStyle;
  final TextStyle highlightStyle;

  const DynamicColoredText({
    super.key,
    required this.fullText,
    required this.highlightTexts,
    this.baseStyle = const TextStyle(color: Colors.black, fontSize: 16),
    this.highlightStyle = const TextStyle(
      color: Colors.blue, 
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
  });

  @override
  Widget build(BuildContext context) {
    // 1. Filtrar elementos vacíos para evitar problemas con la Regex
    final validHighlights = highlightTexts.where((s) => s.isNotEmpty).toList();

    // Si no hay texto a resaltar, devolver el texto completo con el estilo base.
    if (validHighlights.isEmpty) {
      return Text(fullText, style: baseStyle);
    }

    // 2. Crear el patrón de expresión regular.
    // Escapamos los caracteres especiales para Regex y unimos las palabras con '|' (OR).
    final escapedHighlights = validHighlights
        .map((s) => RegExp.escape(s))
        .join('|');
    
    // El patrón de búsqueda: busca cualquiera de las palabras a resaltar.
    final regex = RegExp('($escapedHighlights)');
    
    final List<TextSpan> spans = [];
    int currentPosition = 0;

    // 3. Iterar sobre todas las coincidencias encontradas por la Regex.
    for (var match in regex.allMatches(fullText)) {
      // Parte 1: Texto Normal (el texto antes de la coincidencia).
      if (match.start > currentPosition) {
        spans.add(
          TextSpan(
            text: fullText.substring(currentPosition, match.start),
            style: baseStyle,
          ),
        );
      }
      
      // Parte 2: Texto Resaltado (la palabra que coincidió).
      spans.add(
        TextSpan(
          text: match.group(0), // El texto que hizo la coincidencia.
          style: highlightStyle,
        ),
      );
      
      // Actualizar la posición de inicio para la próxima búsqueda.
      currentPosition = match.end;
    }
    
    // 4. Añadir el Texto Normal restante (después de la última coincidencia).
    if (currentPosition < fullText.length) {
      spans.add(
        TextSpan(
          text: fullText.substring(currentPosition),
          style: baseStyle,
        ),
      );
    }

    // Si no se encontraron coincidencias, se devuelve el texto completo.
    if (spans.isEmpty && fullText.isNotEmpty) {
      return Text(fullText, style: baseStyle);
    }

    // 5. Devolver el widget Text.rich con todos los TextSpans.
    return Text.rich(
      TextSpan(
        children: spans,
      ),
    );
  }
}