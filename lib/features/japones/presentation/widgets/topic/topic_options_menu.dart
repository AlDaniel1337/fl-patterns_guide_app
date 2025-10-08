import 'package:flutter/material.dart';
import 'package:patterns_guide_app/widgets/custom_text_button.dart';

class TopicOptions extends StatelessWidget {

  final void Function()? onExamplesPress;
  final void Function()? onConsiderationsPress;
  final void Function()? onGroupsPress;

  const TopicOptions({
    super.key,
    this.onExamplesPress,
    this.onConsiderationsPress,
    this.onGroupsPress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox( height: 12 ),
        Wrap(
          spacing: 8,
          children: [
            SizedBox(
              width: 150,
              child: CustomTextBtn(
                title: "Ejemplos",
                fontSize: 16,
                onPress: onExamplesPress,
              ),
            ),
            SizedBox(
              width: 150,
              child: CustomTextBtn(
                title: "Consideraciones",
                fontSize: 16,
                onPress: onConsiderationsPress,
              ),
            ),
            SizedBox(
              width: 150,
              child: CustomTextBtn(
                title: "Grupos",
                fontSize: 16,
                onPress: onGroupsPress,
              ),
            ),
          ],
        ),
        SizedBox( height: 12 ),
      ],
    );
  }
}