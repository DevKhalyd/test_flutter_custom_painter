import 'package:flutter/material.dart';

class WaveHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) => CustomPaint(
        painter: _WaveHeaderCustom(), //The container shape
        child: Container(
          height: double.infinity,
          width: double.infinity,
        ),
      );
}

class _WaveHeaderCustom extends CustomPainter {
  //Size means the child's size
  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromCircle(
        //Works the same form
        center: Offset(0.0, 55.0),
        radius: 180.0);

    final gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
      Colors.red,
      Colors.green,
    ],
    stops: [// 0. 0  to 1. 0  limits
      0.45,
      1.0
    ]

    );

    final path = new Path(); //To draw
    
    //cascade
    final pen = new Paint()..shader = gradient.createShader(rect); // To configure the pen to draw

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
    //x2 and y2 means the final position
    path.quadraticBezierTo(
        size.width * .25, size.height * .29, size.width / 2, size.height * .25);

    path.quadraticBezierTo(
        size.width * .75, size.height * .21, size.width, size.height * .25);

    //Curve joins

    path.lineTo(size.width, .0);

    path.close(); //To 0,0

    canvas.drawPath(path, pen); //Draw the lines
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    //If this return true means that shape shouuld be repaint else is not repaint
    return true;
  }
}
