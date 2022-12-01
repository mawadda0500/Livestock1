import 'package:flutter/material.dart';
import 'package:flutter_final_year_application/shared/components/component.dart';

class PasswardChangeA extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var phoneController = TextEditingController();
  var keyController = TextEditingController();
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
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30.21,
                  ),
                  firstText(
                    lable: 'تغيير كلمة المرور',
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Text(
                    'ادخل رقم الهاتف ليصلك رمز التاكيد',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  defaultPhonFormField(
                    keyCon: keyController,
                    PhoneCon: phoneController,
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  defaultMaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(phoneController.text);
                      }
                    },
                    lable: 'الحصول على الرمز',
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
