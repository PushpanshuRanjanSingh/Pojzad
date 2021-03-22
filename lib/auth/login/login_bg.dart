import 'package:pojzad/export_path.dart';

class LoginBG extends StatelessWidget {
  final Widget child;

  const LoginBG({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                height: DeviceUtils.fullHeight(context),
                width: DeviceUtils.fullWidth(context),
                child: CircleAsset(
                  left: -25,
                  innerColor: Colors.yellow,
                  outterColor: [
                    Colors.orange.shade50.withOpacity(0.5),
                    Colors.yellow,
                  ],
                )),
            child,
          ],
        ),
      ),
    );
  }
}
