import 'package:pojzad/export_path.dart';

class Login extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: LoginBG(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _hello(),
                _welcomBack(),
                vGap(DeviceUtils.fullHeight(context) * 0.4),
                _form(authController),
                vGap(DeviceUtils.fullHeight(context) * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Form _form(AuthController authController) => Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.email, style: Decorator.textBold(fontSize: 16)),
            vGap(8.0),
            _emailTextField(authController),
            vGap(32.0),
            Text(Strings.password, style: Decorator.textBold(fontSize: 16)),
            vGap(8.0),
            _passwdTextField(authController),
            vGap(8.0),
            _forgotPassword(),
            vGap(64.0),
            _loginBtn(),
            vGap(16.0),
            _orSignInWith(),
            vGap(16.0),
            _googleFBBtn(),
            vGap(16.0),
            _dontHvAcc(),
          ],
        ),
      );

  _emailTextField(AuthController authController) => RoundedTextFormField(
        hintText: Strings.yourEmail,
        controller: authController.emailController,
        textInputAction: TextInputAction.next,
        textInputType: TextInputType.emailAddress,
        validator: (value) => EmailValidator.validate(value)
            ? null
            : "Please enter a valid email",
      );

  _passwdTextField(AuthController authController) => RoundedTextFormField(
        hintText: Strings.yourPassword,
        controller: authController.passwordController,
        textInputAction: TextInputAction.done,
      );

  _loginBtn() => ElevatedBtn(
        btnText: Strings.login,
        onPressed: () {},
      );

  _orSignInWith() => Align(
        alignment: Alignment.center,
        child: Text(
          Strings.orSignIn.toUpperCase(),
          style: Decorator.textBold(color: Colors.grey),
        ),
      );

  _googleFBBtn() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _iconButton(icon: FontAwesomeIcons.google, color: Colors.orange),
          _iconButton(icon: FontAwesomeIcons.facebook, color: Colors.blue),
        ],
      );

  _dontHvAcc() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Strings.dontHvAcc,
            style: Decorator.textBold(),
          ),
          InkWell(
            onTap: () {},
            child: Text(
              Strings.register,
              style: Decorator.textBold(color: Colors.blue),
            ),
          ),
        ],
      );

  _iconButton({@required IconData icon, @required Color color}) => Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Center(
          child: FaIcon(
            icon,
            color: color,
          ),
        ),
      );

  _forgotPassword() => Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {},
          child: Text(
            Strings.forgotPassword,
            textAlign: TextAlign.end,
            style: Decorator.textNormal(color: Colors.red),
          ),
        ),
      );

  _hello() => Text(
        Strings.hello,
        style: Decorator.textBold(fontSize: 36, fontWeight: FontWeight.w900),
      );

  _welcomBack() => Text(
        Strings.welcomeBack,
        style: Decorator.textBold(fontSize: 36, fontWeight: FontWeight.w700),
      );
}
