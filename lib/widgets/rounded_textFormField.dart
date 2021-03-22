
import 'package:pojzad/export_path.dart';

class RoundedTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  final Function validator;
  final TextInputType textInputType;
  const RoundedTextFormField({
    Key key,
    this.hintText,
    this.controller,
    this.textInputAction,
    this.validator, this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: textInputType,
      textInputAction: textInputAction ?? TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide:
              BorderSide(width: 0, style: BorderStyle.none, color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide:
              BorderSide(width: 0, style: BorderStyle.none, color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
          borderSide: BorderSide(
              width: 0, style: BorderStyle.solid, color: Colors.grey),
        ),
        filled: true,
      ),
    );
  }
}
