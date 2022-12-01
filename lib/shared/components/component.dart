import 'package:flutter/material.dart';

Widget defaultFormFieldA({
  required var controller,
  required TextInputType keyboardType,
  required String lable,
  required IconData suffixIcon,
  var prefixIcon,
  required String vlaidatorLable,
  bool isPassword = false,
}) =>
    Container(
      width: 338,
      child: TextFormField(
        obscureText: isPassword,
        textDirection: TextDirection.rtl,
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          label: Text(lable),
          suffixIcon: Icon(suffixIcon),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 7, 158, 184),
            ),
          ),
        ),
        onFieldSubmitted: (value) {
          print(value);
        },
        validator: (value) {
          if (value!.isEmpty) {
            return vlaidatorLable;
          }
          return null;
        },
      ),
    );
// ---------------------------------------------
Widget defaultPhonFormField({
  required TextEditingController keyCon,
  required TextEditingController PhoneCon,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 83,
          child: TextFormField(
            controller: keyCon,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: '+249',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 158, 184),
                ),
              ),
            ),
            onFieldSubmitted: (String value) {
              print(value);
            },
            validator: (String? value) {
              if (value!.isEmpty) {
                return '!!!!';
              }
              return null;
            },
          ),
        ),
        SizedBox(
          width: 13,
        ),
        Container(
          width: 242,
          child: TextFormField(
            controller: PhoneCon,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'رقم الهاتف',
              suffixIcon: Icon(Icons.phone),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 158, 184),
                ),
              ),
            ),
            onFieldSubmitted: (String value) {
              print(value);
            },
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'يجب إدخال رقم الهاتف ';
              }
              return null;
            },
          ),
        ),
      ],
    );

//______________________________________________
Widget defaultMaterialButton({
  required var onPressed,
  required String lable,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 7, 158, 184),
      ),
      height: 60,
      width: 327,
      child: MaterialButton(
        // color: Color.fromARGB(255, 7, 158, 184),
        onPressed: onPressed,
        child: Text(
          lable,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
//_____________________________________________
Widget defaultIconButtonBack() => IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_right_alt_sharp,
        size: 30,
      ),
    );
//____________________________________________
Widget firstText({required String lable}) => Text(
      lable,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
