

import 'package:pojzad/export_path.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white,
    statusBarColor: Colors.white,
  ));
  runApp(GetMaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}
