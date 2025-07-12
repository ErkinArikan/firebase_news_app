import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kartal/kartal.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  final bool isLoading;
  final double fontSize;
  final double buttonRadius;
  final Color buttonBgColor;
  final Color buttonFontColor;
  final FontWeight buttonFontWeight;
  final double buttonWidth;
  final double buttonHeight;
  final double elevation;
  final EdgeInsetsGeometry? padding;
  final Color? disabledBgColor;
  final Widget? leading;

  const CustomButton({
    this.leading,

    required this.onTap,
    required this.buttonText,
    required this.isLoading,
    required this.fontSize,
    required this.buttonRadius,
    required this.buttonBgColor,
    required this.buttonFontWeight,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.buttonFontColor,
    required this.elevation,
    this.padding, // opsiyonel
    this.disabledBgColor, // opsiyonel

    super.key, // en son
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.sized.normalValue * buttonWidth,
      height: context.sized.height * buttonHeight, // iyileştirme
      child: ElevatedButton(
        onPressed: isLoading ? null : onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBgColor,
          elevation: elevation,
          disabledBackgroundColor:
              disabledBgColor ?? Colors.grey.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              context.sized.normalValue * buttonRadius,
            ),
          ),
        ),
        child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child:
                isLoading
                    ? SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        color: buttonFontColor,
                        strokeWidth: 2,
                      ),
                    )
                    : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (leading != null) ...[
                          leading!,
                          const SizedBox(width: 10),
                        ],
                        Text(
                          buttonText,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              fontSize: context.sized.lowValue * fontSize,
                              fontWeight: buttonFontWeight,
                              color: buttonFontColor,
                            ),
                          ),
                        ),
                      ],
                    ),
          ),
        ),
      ),
    );
  }
}
