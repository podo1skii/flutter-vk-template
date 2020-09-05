import 'package:flutter/material.dart';
import 'package:vk_template_app/styles/colors.dart';

class VKButton extends StatelessWidget {
  final String text;
  final Function onTapCallback;

  VKButton(
      this.text,
      this.onTapCallback,
      );

  @override
  Widget build(BuildContext context) =>
      FlatButton(
        child: Text(text),
        onPressed: onTapCallback,
        textColor: BLUE,
        color: LIGHT_GREY_BACKGROUND,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.only(left: 30, right: 30),
      );

}
