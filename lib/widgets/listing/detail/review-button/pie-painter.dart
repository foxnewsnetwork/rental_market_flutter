part of widgets;

class PiePainter extends CustomPainter {
  /// The angle in radians of the arc slice
  final double sliceAngle;

  const PiePainter({
    Listenable repaint,
    this.sliceAngle: 0.0
  }) : super(repaint: repaint);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint greenPaint = new Paint()..color = Colors.green;
    final Paint redPaint = new Paint()..color = Colors.red;
    final double radius = min(size.width, size.height) / 2;
    final Offset center = new Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, greenPaint);

    final Rect rect = Offset.zero & size;
    const double startAngle = - PI / 2;

    canvas.drawArc(rect, startAngle, sliceAngle, true, redPaint);
  }

  @override
  bool shouldRepaint(PiePainter oldDelegate) => false;
}
