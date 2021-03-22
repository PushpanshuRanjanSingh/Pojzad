
import 'package:pojzad/export_path.dart';

class ElevatedBtn extends StatelessWidget {
  final Color btnColor;
  final Function onPressed;
  final String btnText;
  const ElevatedBtn({
    Key key,
    this.btnColor,
    @required this.onPressed,
    @required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.fullWidth(context),
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: btnColor ?? Colors.blue,
        ),
        onPressed: onPressed,
        child: Text(
          btnText ?? "Button",
          style: Decorator.textBold(fontSize: 16),
        ),
      ),
    );
  }
}