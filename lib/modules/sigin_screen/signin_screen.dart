import 'package:flutter/material.dart';
import 'package:flutter_final_year_application/modules/creat_acount_screen/creat_acount_screen.dart';
import 'package:flutter_final_year_application/shared/components/component.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var phoneController = TextEditingController();
  var keyController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool isVisible = false;
  IconData suffix = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [defaultIconButtonBack()],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 39,
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 57,
                  ),
                  defaultPhonFormField(
                    keyCon: keyController,
                    PhoneCon: phoneController,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultFormFieldA(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    lable: 'كلمة المرور',
                    suffixIcon: Icons.lock,
                    prefixIcon: IconButton(
                      onPressed: (() {
                        setState(() {
                          isVisible = !isVisible;
                          suffix = !isVisible
                              ? Icons.remove_red_eye
                              : Icons.visibility_off;
                        });
                      }),
                      icon: Icon(suffix),
                    ),
                    isPassword: !isVisible,
                    vlaidatorLable: 'يجب إدخال كلمة المرور',
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    width: double.infinity,
                    height: 26.0,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'نسيت كلمة السر',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 175,
                        ),
                        Text(
                          'تذكير',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Checkbox(
                          activeColor: Color.fromARGB(255, 7, 158, 184),
                          value: isPressed,
                          onChanged: (index) {
                            setState(() {
                              isPressed = index!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultMaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(phoneController.text);
                        print(passwordController.text);
                      }
                    },
                    lable: 'تسجيل الدخول',
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: (() {}),
                        child: Text(
                          'إنشاء حساب جديد',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        ' ليس لديك حساب؟',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
