import 'package:flutter/material.dart';
import 'package:flutter_final_year_application/shared/components/component.dart';

class PasswardChangeB extends StatelessWidget {
  var stringcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
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
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 30.21,
                  ),
                  firstText(
                    lable: 'التحقق من رقم الهاتف',
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '+249-99435830',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        ':لقد تم ارسال رسالة نصية للرقم',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  defaultFormFieldA(
                    controller: stringcontroller,
                    keyboardType: TextInputType.number,
                    lable: 'رمز التحقيق',
                    suffixIcon: Icons.phone_android,
                    vlaidatorLable: 'ادخل الرمز رجاءاً',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: (() {}),
                        child: Text(
                          'إعادة إرسال',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        'لم تحصل على الرمز؟',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  defaultMaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print(stringcontroller.text);
                      }
                    },
                    lable: 'تأكيد الرمز',
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
