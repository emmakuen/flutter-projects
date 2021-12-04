import 'package:flutter/material.dart';
import 'package:fooderlich/constants.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Chips extends StatelessWidget {
  const Chips({Key? key}) : super(key: key);

  Chip styledChip({String label = "", void Function()? onDeleted}) => Chip(
        label: Text(label, style: FooderlichTheme.darkTextTheme.bodyText1),
        backgroundColor: Colors.black.withOpacity(0.7),
        onDeleted: onDeleted,
      );

  Wrap getChipTags(List<String> tags) {
    return Wrap(
        alignment: WrapAlignment.start,
        spacing: 12,
        children: tags
            .map((tag) => styledChip(
                label: tag,
                onDeleted: () {
                  print('delete');
                }))
            .toList());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: getChipTags(kChipTags),
    );
  }
}
