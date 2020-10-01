import 'package:flutter/material.dart';
import 'package:neumo/neumo.dart';
import 'package:neumo/widgets/neumo_animated.dart';
import 'package:neumo/widgets/neumo_text.dart';

class NeumoTextButton extends StatefulWidget {
  final TextStyle style;
  final Color textColor;
  final Color colorOnDown;
  final Function onTap;
  final String text;
  final Color color;
  final double borderRadius;
  final Padding padding;
  final double size;

  NeumoTextButton(
      {@required this.onTap,
      @required this.text,
      @required this.color,
      this.borderRadius,
      this.padding,
      this.style,
      this.textColor,
      this.size,
      this.colorOnDown});

  @override
  _NeumoTextButtonState createState() => _NeumoTextButtonState();
}

class _NeumoTextButtonState extends State<NeumoTextButton> {
  bool isDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapUp: (data) {
        setState(() {
          isDown = false;
        });
      },
      onTapDown: (data) {
        setState(() {
          isDown = true;
        });
      },
      child: NeumoAnimated(
        borderRadius: widget.borderRadius ?? 0.0,
        duration: Duration(milliseconds: 200),
        emboss: isDown,
        color: widget.color,
        parentColor: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: NeumoText(
            widget.text,
            color: widget.color,
            emboss: isDown,
            style: widget.style,
            textColor: isDown? widget.colorOnDown:widget.textColor,
            size: widget.size,
          ),
        ),
      ),
    );
  }
}
