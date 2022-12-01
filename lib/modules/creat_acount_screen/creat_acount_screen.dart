import 'package:flutter/material.dart';
import 'package:flutter_final_year_application/shared/components/component.dart';

class CreatAcount extends StatefulWidget {
  @override
  State<CreatAcount> createState() => _MyWidgetState();
}

var phoneController = TextEditingController();
var nameController = TextEditingController();
var passwordController = TextEditingController();
var keyController = TextEditingController();
var keyForm = GlobalKey<FormState>();
var isPressed = false;
bool isVisible = false;
IconData suffix = Icons.remove_red_eye;
bool indexA = false;
bool indexB = false;
bool indexC = false;
String input = '';
var colorActive = Colors.white;
var colorInactive = Color.fromARGB(255, 7, 158, 184);

class _MyWidgetState extends State<CreatAcount> {
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
          key: keyForm,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30.21,
                  ),
                  Text(
                    'انشاء حساب',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  defaultFormFieldA(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    lable: 'اسم المستخدم',
                    suffixIcon: Icons.person,
                    vlaidatorLable: 'يجب إدخال اسم المستخدم',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultPhonFormField(
                    PhoneCon: phoneController,
                    keyCon: keyController,
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
                    height: 20,
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
                  Text(
                    'الدخول ك',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: indexC
                                ? Color.fromARGB(255, 7, 158, 184)
                                : Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              input = 'طبيب';
                              indexC = !indexC;
                              indexA = false;
                              indexB = false;
                            });
                            print(input);
                          },
                          child: const Text('طبيب'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: indexB
                                ? Color.fromARGB(255, 7, 158, 184)
                                : Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              input = 'مرشد';
                              indexC = false;
                              indexA = false;
                              indexB = !indexB;
                            });
                            print(input);
                          },
                          child: const Text('مرشد'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.black,
                            backgroundColor: indexA
                                ? Color.fromARGB(255, 7, 158, 184)
                                : Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              input = 'راعي';
                              indexC = false;
                              indexA = !indexA;
                              indexB = false;
                            });
                            print(input);
                          },
                          child: const Text('راعي'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultMaterialButton(
                    onPressed: () {
                      if (keyForm.currentState!.validate()) ;
                      print(phoneController.text);
                      print(passwordController.text);
                    },
                    lable: 'انشاء حساب',
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
