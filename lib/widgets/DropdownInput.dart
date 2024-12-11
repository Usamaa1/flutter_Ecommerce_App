
import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  final value;

  final List dropDownList;
  final Function(dynamic) changeFunc;
  final Color? bgColor;
  const DropdownInput({
    super.key,
    this.value,
    required this.dropDownList,
    required this.changeFunc,
    this.bgColor,
  });

  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.8,
            maxHeight: 60,
          ),
          filled: true,
          fillColor: widget.bgColor ?? Colors.white54,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            value: widget.value,
            items: widget.dropDownList
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (value) {
              widget.changeFunc(value);
            }),
      ),
    );
  }
}
