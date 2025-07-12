import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color iconsColor;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;
  final int? maxLength;
  final double borderRadius;
  final Color borderColor;
  final Color fillColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Function(String)? onChanged;
  final Function()? onSuffixTap;
  final bool isEnabled;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.inputType, // ✅
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.iconsColor,
    required this.obscureText,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
    required this.borderRadius,
    required this.borderColor,
    required this.fillColor,
    required this.textColor,
    required this.fontSize,
    required this.fontWeight,
    required this.padding,
    required this.margin,
    required this.onChanged,
    this.onSuffixTap,
    required this.isEnabled,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = false;

  @override
  void initState() {
    super.initState();
    _isObscure = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin,
      padding: widget.padding,
      decoration: BoxDecoration(
        color: widget.fillColor,
        borderRadius: BorderRadius.circular(widget.borderRadius),
        border: Border.all(color: widget.borderColor),
      ),
      child: TextField(
        controller: widget.controller,
        textCapitalization: widget.textCapitalization,
        keyboardType: widget.inputType,
        maxLength: widget.maxLength,
        obscureText: _isObscure,
        enabled: widget.isEnabled,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            color: widget.textColor,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
        ),
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle: TextStyle(color: widget.iconsColor, fontSize: 16),
          hintStyle: TextStyle(color: Colors.grey[500]),
          counterText: "",
          border: InputBorder.none,
          prefixIcon:
              widget.prefixIcon != null
                  ? Icon(widget.prefixIcon, color: widget.iconsColor)
                  : null,
          suffixIcon:
              widget.suffixIcon != null
                  ? GestureDetector(
                    onTap:
                        widget.onSuffixTap ??
                        () {
                          if (widget.obscureText) {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          }
                        },
                    child: Icon(
                      _isObscure ? Icons.visibility : widget.suffixIcon,
                      color: widget.iconsColor,
                    ),
                  )
                  : null,
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
