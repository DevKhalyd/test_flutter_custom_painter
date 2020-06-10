import 'package:flutter/material.dart';

class CurveHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _CurveHeaderCustom(), //The container shape
        child: Container(
          height: double.infinity,
          width: double.infinity,
        ),
      );
}

class _CurveHeaderCustom extends CustomPainter {
  //Size means the child's size
  @override
  void paint(Canvas canvas, Size size) {
    final path = new Path(); //To draw
    final pen = new Paint(); // To configure the pen to draw

    //Setup the pen
    pen.strokeWidth = 5;
    pen.color = Colors.deepPurple;
    //If there is a design hard. The propierty stroke should be used
    pen.style = PaintingStyle.fill; //Or PaintingStyle.stroke Just a line

    //Drawing

    //path.moveTo() MEANS CHANGE POSITION OF THE PEN TO DRAWING
    //path.lineTo() MEAN Draw frm x position to y position to do that we neeed to methods like this...

    //X means  = width and Y means = height
    //Alll paths starts at 0.0

    path.lineTo(.0, size.height * .25);

    //x1 and y1 means the curve point
    //x2 and y2 means the position final
    path.quadraticBezierTo(
        size.width / 2, size.height * .45, size.width, size.height * .25);

    path.lineTo(size.width,.0);

    path.close(); //To 0,0

    canvas.drawPath(path, pen); //Draw the lines
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //If this return true means that shape shouuld be repaint else is not repaint
    return true;
  }
}
