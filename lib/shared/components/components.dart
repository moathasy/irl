import 'package:flutter/material.dart';
import 'package:irl/global/app_constants.dart';

Widget itemBuilder({
  required IconData icon,
  required String label,
  required VoidCallback onTap,
}) =>
    InkWell(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: 70,
            child: Row(
              children: [
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
// separatorBuilder: (context, index) => Container(
//   height: 1.0,
//   width: double.infinity,
//   color: Colors.grey,
// ),
// itemCount: ,

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.white,
  required String text,
  double radius = 0.0,
  required Function function,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  // required Function onChanged,
  Function(String val)? onSubmit,
  required Function validator,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? onTap,
  bool isPassword = false,
  VoidCallback? suffixPressed,
  // required Function onTap,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      validator: (value) {
        return validator(value);
      },
      obscureText: isPassword,
      cursorColor: AppConstants.customTheme!.primaryColor,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: AppConstants.customTheme!.primaryColor,
        ),
        prefixIcon: Icon(
          prefix,
          color: AppConstants.customTheme!.primaryColor,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: AppConstants.customTheme!.primaryColor,
                ),
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppConstants.customTheme!.primaryColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: AppConstants.customTheme!.primaryColor,
          ),
        ),
      ),
    );
