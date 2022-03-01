import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/ui_helpers.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  Iterable<String>? autofillHints;
  GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final AutovalidateMode? autovalidateMode;
  final Widget? prefixIcon;
  final double? height;
  final Color? textColor;
  final String? hintText;
  final bool autoFocus;
  final bool isPasswordTextField;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldSetter<String>? onSaved;
  ValueChanged<String>? onFieldSubmitted;
  final String? labelText;
  final FormFieldValidator<String>? validator;
  final String? prefixText;
  bool obscureText;
  bool? enabled;
  String? initialValue;
  final Color? fillColor;
  bool? autocorrect;
  TextCapitalization? textCapitalization;
  bool readOnly = false;

  CustomTextFormField.regular({
    Key? key,
    this.controller,
    this.readOnly = false,
this.autofillHints,
    this.onTap,
    this.onChanged,
    this.autovalidateMode,
    this.textColor,
    this.hintText,
    this.autoFocus = false,
    this.height,
    this.onSaved,
    this.onFieldSubmitted,
    this.isPasswordTextField = false,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.prefixIcon,
    this.labelText,
    this.obscureText = false,
    this.floatingLabelBehavior,
    this.prefixText,
    this.validator,
    this.enabled,
    this.initialValue,
    this.fillColor,
    this.autocorrect,
    this.textCapitalization,
  }) : super(key: key);

  CustomTextFormField.password({
    Key? key,
    this.controller,
    this.onChanged,
    this.height,
    this.autovalidateMode,
    this.prefixIcon,
    this.textColor,
    this.hintText,
    this.autoFocus = false,
    this.floatingLabelBehavior,
    this.isPasswordTextField = true,
    this.keyboardType = TextInputType.text,
    this.textInputAction,
    this.inputFormatters,
    this.onSaved,
    this.onFieldSubmitted,
    this.labelText,
    this.obscureText = true,
    this.prefixText,
    this.validator,
    this.enabled,
    this.initialValue,
    this.fillColor,
    this.autocorrect,
    this.textCapitalization,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: TextFormField(
        autofillHints: widget.autofillHints,
        onTap: widget.onTap,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        onFieldSubmitted: widget.onFieldSubmitted,
        onSaved: widget.onSaved,
        autovalidateMode: widget.autovalidateMode,
        onChanged: widget.onChanged,
        inputFormatters: widget.inputFormatters,
        cursorColor: kGreen,
        style: kRegularTextStyle.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: widget.textColor ?? Colors.black),
        textCapitalization:
        widget.textCapitalization ?? TextCapitalization.none,
        autocorrect: widget.autocorrect ?? false,
        controller: widget.controller,
        initialValue: widget.initialValue,
        autofocus: widget.autoFocus,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        validator: widget.validator,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          prefixText: widget.prefixText,
          prefixStyle: kRegularTextStyle.copyWith(fontWeight: FontWeight.bold),
          floatingLabelBehavior: widget.floatingLabelBehavior,
          prefixIcon: widget.prefixIcon,
          labelText: widget.labelText,
          labelStyle: kRegularTextStyle.copyWith(fontSize: 15, color: kBlack, fontWeight: FontWeight.bold),
          enabledBorder:
          const UnderlineInputBorder(borderSide: BorderSide(color: kBlack)),
          disabledBorder: UnderlineInputBorder(
              borderRadius: kBorderRadius,
              borderSide:
              BorderSide(color: widget.fillColor ?? Colors.grey[200]!)),
          focusedBorder:
          const UnderlineInputBorder(borderSide: BorderSide(color: kBlack)),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          hintText: widget.hintText,
          hintStyle: kRegularTextStyle.copyWith(color: Colors.grey),
          errorStyle: kRegularTextStyle.copyWith(color: kRed, fontSize: 12),
          suffixIcon: widget.isPasswordTextField
              ? GestureDetector(
            child: widget.obscureText
                ? const Icon(Icons.visibility, color: kGreen)
                : const Icon(Icons.visibility_off, color: Colors.grey),
            onTap: () =>
                setState(() {
                  widget.obscureText = !widget.obscureText;
                }),
          )
              : null,
        ),
      ),
    );
  }
}
