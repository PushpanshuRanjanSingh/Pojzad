
import 'package:pojzad/export_path.dart';

class CircleAsset extends StatelessWidget {
  final double innerScale;
  final double outerScale;
  final Color innerColor;
  final List<Color> outterColor;
  final double top;
  final double left;
  final double right;
  final double bottom;
  const CircleAsset({
    Key key,
    this.innerScale,
    this.outerScale,
    @required this.innerColor,
    @required this.outterColor,
    this.top,
    this.left,
    this.right,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: top,
          left: left,
          right: right,
          bottom: bottom,
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: DeviceUtils.fullWidth(context) * (outerScale ?? 0.6),
                  width: DeviceUtils.fullWidth(context) * (outerScale ?? 0.6),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: outterColor,
                        stops: [0.5, 1.0],
                      ),
                      borderRadius: BorderRadius.circular(
                        DeviceUtils.fullWidth(context) * (outerScale ?? 0.6),
                      )),
                ),
                Container(
                  height: DeviceUtils.fullWidth(context) * (innerScale ?? 0.4),
                  width: DeviceUtils.fullWidth(context) * (innerScale ?? 0.4),
                  decoration: BoxDecoration(
                      color: innerColor ?? Colors.blue,
                      borderRadius: BorderRadius.circular(
                          DeviceUtils.fullWidth(context) *
                              (innerScale ?? 0.4))),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
