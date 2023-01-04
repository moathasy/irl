import 'package:flutter/material.dart';

Widget itemBuilder(IconData icon, String label) => Expanded(
      child: InkWell(
        onTap: () {},
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
  Function? onSubmit,
  required Function validator,
  required String label,
  required IconData prefix,
  IconData? suffix,
  Function? onTap,
  bool isPassword = false,
  Function? suffixPressed,
  // required Function onTap,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (value) => onSubmit!(),
      // onChanged: (a) {
      //   onChanged();
      // },
      validator: (value) {
        return validator(value);
      },
      obscureText: isPassword,
      // onTap: onTap!(),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () => suffixPressed!(),
                icon: Icon(suffix),
              )
            : null,
        border: const OutlineInputBorder(),
      ),

      // onTap: (){
      //   onTap();
      // },
      // decoration: InputDecoration(
      //     labelText: 'Email Address',
      //     border: OutlineInputBorder(),
      //     prefixIcon: Icon(Icons.email)),
    );
