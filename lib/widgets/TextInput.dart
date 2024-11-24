import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String labelText;
  final String? forHelpText;
  final int? inputColor;
  final double? inputWidth;
  final double? borderRadius;
  final TextEditingController inputController;
  final bool? securingText;
  final String? securingCharacter;
  final bool? inputIsPassword;

  const TextInput({
    super.key,
    required this.labelText,
    this.forHelpText,
    this.inputColor,
    this.inputWidth,
    this.borderRadius,
    required this.inputController,
    this.securingText,
    this.securingCharacter,
    this.inputIsPassword,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  late bool secureBool;
  late IconData passIcon = Icons.visibility_off;

  @override
  void initState() {
    super.initState();
    secureBool = widget.inputIsPassword ?? false;
  }

  void passEyeFunc() {
    setState(() {
      passIcon = passIcon == Icons.visibility_off
          ? Icons.visibility
          : Icons.visibility_off;
      secureBool = !secureBool;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      width: MediaQuery.of(context).size.width * (widget.inputWidth ?? 1.0),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          TextField(
            obscuringCharacter: widget.securingCharacter ?? " ",
            obscureText: secureBool,
            controller: widget.inputController,
            decoration: InputDecoration(
              helperText: widget.forHelpText,
              label: Text(
                widget.labelText,
                style: TextStyle(
                  color: Color(widget.inputColor ?? 0xff000),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(widget.inputColor ?? 0xff000),
                ),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 1),
              ),
            ),
          ),
          if (widget.inputIsPassword ?? false)
            IconButton(onPressed: passEyeFunc, icon: Icon(passIcon))
        ],
      ),
    );
  }
}
