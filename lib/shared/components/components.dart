

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget itemBuilder(
    IconData icon,String label
    ) => Expanded(
      child:
         InkWell(
           onTap: (){},
           child: Column(
            children: [
              Container(
                height: 70,
                child: Row(
                  children: [
                    Icon(icon),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      label,
                      style: TextStyle(fontSize: 20),
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
  double radious = 0.0,
  required Function function,
}) =>
    Container(
      width: width,
      child: MaterialButton(
        onPressed: () {
          return function();
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radious),
        color: background,
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
  bool isPassword=false,
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
        prefixIcon: Icon(
            prefix
        ),
        suffixIcon: suffix != null ? IconButton(
          onPressed:() => suffixPressed!(),
          icon: Icon(
              suffix
          ),
        ) : null,
        border: OutlineInputBorder(),

      ),


      // onTap: (){
      //   onTap();
      // },
      // decoration: InputDecoration(
      //     labelText: 'Email Address',
      //     border: OutlineInputBorder(),
      //     prefixIcon: Icon(Icons.email)),

    );


