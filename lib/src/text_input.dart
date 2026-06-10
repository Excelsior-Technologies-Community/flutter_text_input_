import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterTextInput extends StatefulWidget {
  final TextEditingController? controller;

  final FocusNode? focusNode;

  final String? hintText;

  final bool isEmail;

  final bool isPhone;

  final bool showClearButton;

  final bool showCharacterCounter;

  final int? maxLength;

  final String? labelText;

  final IconData? prefixIcon;

  final IconData? suffixIcon;

  final bool obscureText;

  final bool enablePasswordToggle;

  final bool readOnly;

  final bool enabled;

  final int maxLines;

  final TextInputType? keyboardType;

  final String? Function(String?)? validator;

  final ValueChanged<String>? onChanged;

  final BorderRadius? borderRadius;

  final Color? borderColor;

  const FlutterTextInput({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enablePasswordToggle = false,
    this.readOnly = false,
    this.enabled = true,
    this.maxLines = 1,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.borderRadius,
    this.borderColor,
    this.isEmail = false,
    this.isPhone = false,
    this.showClearButton = false,
    this.showCharacterCounter = false,
    this.maxLength,
  });

  @override
  State<FlutterTextInput> createState() => _FlutterTextInputState();
}

class _FlutterTextInputState extends State<FlutterTextInput> {
  late bool _obscure;

  @override
  void initState() {
    super.initState();

    _obscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,

      focusNode: widget.focusNode,

      obscureText: _obscure,

      readOnly: widget.readOnly,

      enabled: widget.enabled,

      maxLines: widget.obscureText ? 1 : widget.maxLines,

      keyboardType: widget.keyboardType,

      maxLength: widget.showCharacterCounter ? widget.maxLength : null,

      inputFormatters: widget.isPhone
          ? [FilteringTextInputFormatter.digitsOnly]
          : null,

      validator: (value) {
        if (widget.validator != null) {
          return widget.validator!(value);
        }

        if (widget.isEmail) {
          final emailRegex = RegExp(r'^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,4}$');

          if (!emailRegex.hasMatch(value ?? '')) {
            return 'Invalid Email';
          }
        }

        if (widget.isPhone) {
          final phoneRegex = RegExp(r'^[0-9]{10}$');

          if (!phoneRegex.hasMatch(value ?? '')) {
            return 'Invalid Phone Number';
          }
        }

        return null;
      },

      onChanged: widget.onChanged,

      decoration: InputDecoration(
        hintText: widget.hintText,

        labelText: widget.labelText,

        floatingLabelBehavior: FloatingLabelBehavior.auto,

        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,

        suffixIcon: widget.enablePasswordToggle
            ? IconButton(
                icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),

                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              )
            : widget.showClearButton
            ? IconButton(
                icon: const Icon(Icons.clear),

                onPressed: () {
                  widget.controller?.clear();
                },
              )
            : widget.suffixIcon != null
            ? Icon(widget.suffixIcon)
            : null,

        border: OutlineInputBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(12),

          borderSide: BorderSide(color: widget.borderColor ?? Colors.grey),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(12),

          borderSide: BorderSide(color: widget.borderColor ?? Colors.grey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius ?? BorderRadius.circular(12),

          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.blue,

            width: 2,
          ),
        ),
      ),
    );
  }
}
