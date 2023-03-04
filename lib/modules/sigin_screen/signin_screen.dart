import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_year_application/layout/app_layout_screen.dart';
import 'package:flutter_final_year_application/modules/create_acount_screen/create_acount_screen.dart';
import 'package:flutter_final_year_application/modules/otp_page/otp_page.dart';
import 'package:flutter_final_year_application/modules/sigin_screen/cubit/cubit.dart';
import 'package:flutter_final_year_application/modules/sigin_screen/cubit/state.dart';
import 'package:flutter_final_year_application/shared/components/component.dart';

late String phoneNumber;

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    // var keyController = TextEditingController();
    var passwordController = TextEditingController();

    var formKey = GlobalKey<FormState>();

    return BlocConsumer<SigninCubit, SigninStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = SigninCubit.get(context);
        return Scaffold(
          appBar: AppBar(
              //leading: defaultIconButtonBack(),
              ),
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 39),
                      const SizedBox(height: 42),
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
                        PhoneCon: phoneController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // defaultFormFieldA(
                      //   controller: passwordController,
                      //   keyboardType: TextInputType.visiblePassword,
                      //   lable: 'كلمة المرور',
                      //   suffixIcon: Icons.lock,
                      //   prefixIcon: IconButton(
                      //     onPressed: () {
                      //       cubit.visiability();
                      //     },
                      //     icon: Icon(cubit.suffix),
                      //   ),
                      //   isPassword: !cubit.isVisible,
                      //   vlaidatorLable: 'يجب إدخال كلمة المرور',
                      // ),
                      SizedBox(
                        height: 7,
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   height: 35.0,
                      //   child: Row(
                      //     children: [
                      //       SizedBox(
                      //         width: 35,
                      //       ),
                      //       TextButton(
                      //         onPressed: () {
                      //           Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                 builder: (context) => Directionality(
                      //                     textDirection: TextDirection.rtl,
                      //                     child: PasswardChangeA()),
                      //               ));
                      //         },
                      //         child: Text(
                      //           'نسيت كلمة السر',
                      //           style: TextStyle(
                      //             fontSize: 12,
                      //             fontWeight: FontWeight.w400,
                      //           ),
                      //         ),
                      //       ),
                      //       Spacer(),
                      //       Text(
                      //         'تذكير',
                      //         style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.w400,
                      //         ),
                      //       ),
                      //       Checkbox(
                      //         activeColor: Color.fromARGB(255, 7, 158, 184),
                      //         value: cubit.isPressed,
                      //         onChanged: (index) {
                      //           {
                      //             cubit.checkSignin(index!);
                      //           }
                      //         },
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        height: 20,
                      ),
                      defaultMaterialButton(
                        onPressed: () {
                          phoneNumber = phoneController.text;
                          if (formKey.currentState!.validate()) {
                            print(phoneController.text);
                            print(passwordController.text);
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: OtpPage()),
                                ),
                                (route) => true);
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
                          Text(
                            ' ليس لديك حساب؟',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextButton(
                            onPressed: (() {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: CreateAcount()),
                                  ),
                                  (route) => false);
                            }),
                            child: Text(
                              'إنشاء حساب جديد',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
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
      },
    );
  }
}
