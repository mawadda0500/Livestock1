import 'package:flutter/material.dart';
import 'package:flutter_final_year_application/shared/components/component.dart';

class PasswardChangeC extends StatefulWidget {
  @override
  State<PasswardChangeC> createState() => _PasswardChangeCState();
}

class _PasswardChangeCState extends State<PasswardChangeC> {
  var passwordControllerA = TextEditingController();
  var passwordControllerB = TextEditingController();
  var keyForm = GlobalKey<FormState>();
  bool isVisible = false;
  IconData suffix = Icons.remove_red_eye;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          defaultIconButtonBack(),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
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
                  firstText(lable: 'اعادة تعيين كلمة المرور'),
                  SizedBox(
                    height: 80.0,
                  ),
                  defaultFormFieldA(
                    controller: passwordControllerA,
                    keyboardType: TextInputType.visiblePassword,
                    lable: 'كلمة المرور',
                    suffixIcon: Icons.lock,
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                          suffix = !isVisible
                              ? Icons.remove_red_eye
                              : Icons.visibility_off;
                        });
                      },
                      icon: Icon(suffix),
                    ),
                    vlaidatorLable: 'يجب إدخال كلمة المرور',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormFieldA(
                    controller: passwordControllerB,
                    keyboardType: TextInputType.visiblePassword,
                    lable: ' تأكيد كلمة المرور ',
                    suffixIcon: Icons.lock,
                    prefixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                          suffix = !isVisible
                              ? Icons.remove_red_eye
                              : Icons.visibility_off;
                        });
                      },
                      icon: Icon(suffix),
                    ),
                    vlaidatorLable: 'يجب إدخال تأكيد كلمة المرور',
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  defaultMaterialButton(
                    onPressed: () {
                      if (keyForm.currentState!.validate()) {
                        print(passwordControllerB.text);
                      }
                    },
                    lable: 'تغيير كلمة المرور',
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
