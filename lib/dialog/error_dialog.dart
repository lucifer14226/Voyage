import 'package:fease/dialog/showdialog.dart';
import 'package:flutter/material.dart';

Future<void> showErrorDialog(BuildContext context, String text) {
  return showGenericDialog(
    context: context,
    title: 'Error',
    content: text,
    optionBuilder: () => {
      'Ok': null,
    },
  );
}
