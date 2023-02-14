import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'functions.dart';

// Widget for Rounded Rectangle Box
class RoundedRectangleBox extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? color;
  final BoxBorder? border;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  RoundedRectangleBox({
    this.width,
    this.height,
    this.borderRadius,
    this.border,
    this.color,
    this.child,
    this.padding});

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(this.borderRadius!)),
        border: this.border,
      ),
      child: SizedBox(
        width: this.width,
        height: this.height,
        child: this.child,
      ),
      padding: this.padding,
    );
  }
}

// Input form with an icon and an input text field
class InputFormWithIcon extends StatelessWidget {
  final double? height;
  double? horizontalPadding = 0.0;
  double? borderWidth = 1.0;
  Color? borderColor = Colors.white;
  Color? iconBackgroundColor = Colors.white;
  final IconData? icon;
  double? iconSize = 20.0;
  bool? obscureText = false;
  String? hint = '';
  TextEditingController? controller;

  InputFormWithIcon({
    @required this.height,
    this.horizontalPadding,
    this.borderColor,
    this.iconBackgroundColor,
    @required this.icon,
    this.iconSize,
    this.obscureText,
    this.hint,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: this.horizontalPadding!, right: this.horizontalPadding!),
      child: RoundedRectangleBox(
        borderRadius: 5,
        border: Border.all(width: 1, color: this.borderColor!),
        height: this.height!,
        child: Row(
          children: [
            IconWithBackground(
                icon: this.icon!,
                size: this.height!,
                iconSize: this.iconSize!),
            Padding(padding: EdgeInsets.only(right: 10)),

            Expanded(
              child: TextField(
                obscureText: this.obscureText!,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                textAlignVertical: TextAlignVertical.top,
                keyboardType: TextInputType.visiblePassword,
                maxLines: 1,
                controller: this.controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// A square icon with a backgroud
class IconWithBackground extends StatelessWidget {
  double? size = 40.0;
  double? iconSize = 20.0;
  IconData? icon;

  IconWithBackground({
    this.size,
    this.iconSize,
    @required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: codeToColor('#eaecef'),
      child: SizedBox(
        width: this.size,
        height: this.size,
        child: Icon(this.icon, size: this.iconSize,),
      ),
    );
  }
}

// Alinco Error Dialog
class SimpleErrorDialog extends StatelessWidget {
  final String title = "エラー";
  final String? message;
  const SimpleErrorDialog({@required this.message});

  @override
  Widget build(BuildContext context){
    return CupertinoAlertDialog(
      title: Text(this.title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Text(this.message!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,),
            textAlign: TextAlign.start,
          ),
        ],
      ),
      actions: [
        CupertinoDialogAction(
          child: Text('OK',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
          onPressed: (){Navigator.pop(context);},
        )
      ],
    );
  }
}
