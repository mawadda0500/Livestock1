import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_year_application/modules/otp_page/otp_page.dart';
import 'package:flutter_final_year_application/modules/sigin_screen/cubit/state.dart';

class SigninCubit extends Cubit<SigninStates> {
  SigninCubit() : super(SiginIinitailState());

  static SigninCubit get(context) => BlocProvider.of(context);
  var verficationId = '';
  // start of signin screen
  // bool isVisible = false;
  // IconData suffix = Icons.remove_red_eye;

  // void visiability() {
  //   isVisible = !isVisible;
  //   suffix = !isVisible ? Icons.remove_red_eye : Icons.visibility_off;
  //   emit(SigninVisiabilityState());
  // }

  // bool isPressed = false;

  // void checkSignin(bool index) {
  //   isPressed = index;
  //   emit(SigninCheckState());
  // }
// end of signin screen

// start of creat acount section
  // bool isPressedCreate = false;
  // bool isVisibleCreate = false;
  // IconData suffixCreate = Icons.remove_red_eye;
  bool indexA = false;
  bool indexB = false;
  bool indexC = false;
  String errorMessege = '';
  // void visiabilityCreate() {
  //   isVisibleCreate = !isVisibleCreate;
  //   suffixCreate =
  //       !isVisibleCreate ? Icons.remove_red_eye : Icons.visibility_off;
  //   emit(CreateVisiabilityisState());
  // }

  void typeButton(input) {
    if (input == 1) {
      indexA = !indexA;
      indexB = false;
      indexC = false;
    }
    if (input == 2) {
      indexB = !indexB;
      indexA = false;
      indexC = false;
    }
    if (input == 3) {
      indexC = !indexC;
      indexB = false;
      indexA = false;
    }
    emit(CreateTypeButtonState());
  }

  // void checkCreate(bool index) {
  //   isPressedCreate = index;
  //   emit(CreateCheckState());
  // }

  Future<void> userRigerster({
    required String name,
    required String phone,
    required String type,
    required BuildContext context,
  }) async {
    emit(SiginRegisterLoadingState());
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+249905129615',
      verificationCompleted: (credentail) async {
        await FirebaseAuth.instance.signInWithCredential(credentail);
      },
      verificationFailed: (e) {
        errorMessege = e.code;
        emit(CreateAcountError());
      },
      codeSent: (verificationId, forceResendingToken) {
        verficationId = verificationId;
        emit(CreateAcountState());
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Directionality(
                  textDirection: TextDirection.rtl,
                  child: OtpPage(verificationId: verificationId)),
            ));
      },
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }
}
