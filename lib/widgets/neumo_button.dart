import 'package:flutter/material.dart';
import 'package:neumo/neumo.dart';
import 'package:neumo/widgets/neumo_animated.dart';

class NeumoButton extends StatefulWidget {
  final Function onTap;
  final Widget child;
  final Color color;
  final double borderRadius;

  NeumoButton({@required this.onTap , @required this.child, @required this.color, this.borderRadius});
  @override
  _NeumoButtonState createState() => _NeumoButtonState();
}

class _NeumoButtonState extends State<NeumoButton> {
  bool isDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapUp: (data){
        setState(() {
          isDown = false;
        });
      },
      onTapDown: (data){
       setState(() {
         isDown =true;
       });
      },
      child: NeumoAnimated(
        borderRadius: widget.borderRadius??0.0,
        duration: Duration(milliseconds: 200),
        emboss: isDown,
        color: widget.color,
        parentColor: Colors.blueGrey,
        child: widget.child,

      ),
    );
  }
}
