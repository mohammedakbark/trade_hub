import 'package:email_otp/email_otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trade_hub/model/all_user_model.dart';
import 'package:trade_hub/model/usermodel.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/admin/shop%20sign%20in.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/log%20in.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';
import 'package:trade_hub/view/Modules/user/pages/shoping%20page.dart';
import 'package:trade_hub/viewmodel/check_login_preference.dart';

class FirebaseAuths {
  FirebaseAuth auth = FirebaseAuth.instance;
  dynamic uID;

  sign(
    email,
    password,
    BuildContext context,
  ) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      uID = userCredential.user!.uid;

      print("*********************$uID**********************");
    } catch (e) {
      customeShowDiolog("$e", context);
    }
  }

  EmailOTP myauth = EmailOTP();
  configaration(String email) {
    myauth.setConfig(
        appEmail: "me@rohitchouhan.com",
        appName: "Email OTP",
        userEmail: email,
        otpLength: 6,
        otpType: OTPType.digitsOnly);
  }

  sendotp() {
    myauth.sendOTP();
  }

  verifyotp(String otp, String email, String password, String userNmae,
      context) async {
    bool ver = myauth.verifyOTP(otp: otp);
    if (ver) {
      await authInstence.sign(email, password, context);
      await storeInstence.addUserToCollectionUser(
          FirebaseAuth.instance.currentUser!.uid,
          UserModel(
              country: "select your country",
              dateOfBirth: "set your date of birth",
              deliveryAddress: "Set your delivery address",
              email: email,
              name: userNmae,
              profileImage: "",
              userID: FirebaseAuth.instance.currentUser!.uid),
          context);
      await storeInstence.addAllUser(
          FirebaseAuth.instance.currentUser!.uid,
          AllUserModel(
              email: email,
              type: "USER",
              userId: FirebaseAuth.instance.currentUser!.uid));

      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Account created Successful.\nNow login with Your Email & Password",
              style: GoogleFonts.abel(fontSize: 20),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Loginnn()),
                        (route) => false);
                  },
                  child: const Text("Login"))
            ],
          );
        },
      );
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                "Otp is Incorrect",
                style: GoogleFonts.abel(fontSize: 20),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Login"))
              ],
            );
          });
    }
  }

  emailVarification(
    context,
  ) async {
    try {
      if (FirebaseAuth.instance.currentUser != null &&
          !FirebaseAuth.instance.currentUser!.emailVerified) {
        await FirebaseAuth.instance.currentUser!.sendEmailVerification().then(
            (value) => customeShowDiolog(
                "Varification email Send to your registered email address ${FirebaseAuth.instance.currentUser!.email} ",
                context));
      }
    } catch (e) {
      customeShowDiolog("$e", context);
    }
  }

  Future<void> login(email, password, context, selected) async {
    try {
      currentUID = await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) async {
        setLoginPrefertrue();
        if (selected == 0) {
          noti("Login Successfull");
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Navigationnn()),
              (route) => false);
        } else if (selected == 1) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Shopsigninnn()),
              (route) => false);
        }
        return value.user!.uid;
      });
    } catch (e) {
      customeShowDiolog("$e", context);
    }
  }
///////////////////////////////////////////////////////////////////////////////////////

  // Future signWithGoogle(
  //   context,
  // ) async {
  //   try {
  //     final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
  //     final GoogleSignInAuthentication? gAuth = await gUser?.authentication;
  //     final credential = GoogleAuthProvider.credential(
  //         accessToken: gAuth?.accessToken, idToken: gAuth?.idToken);

  //     await auth
  //         .signInWithCredential(credential)
  //         // return await auth.signInWithCredential(credential)
  //         .then((value) async {
  //       await storenstence.addUserToCollectionUser(
  //           value.user?.uid,
  //           UserModel(
  //             userType: "USER",
  //               label: "",
  //               age: "",
  //               email: "${gUser?.email}",
  //               gender: "",
  //               password: "",
  //               phonenumber: 0,
  //               profileimage: "${gUser?.photoUrl}",
  //               proofimage: "",
  //               userID: "${value.user?.uid}",
  //               username: "${gUser?.displayName}",
  //               about: "",
  //               address: "",
  //               area: "",
  //               city: "",
  //               hostingDetails: "",
  //               message: "",
  //               nickeNmae: "",
  //               pincode: "",
  //               state: ""),
  //           context);

  //       setLoginPrefertrue();
  //       return await Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => HomePage()));
  //     });
  //   } catch (e) {
  //     return customeShowDiolog("$e", context);
  //   }
  // }

  ///////////////////SIGNOUT//////////////////////////////////////
  ///
  ///

  Future signOut(
    context,
  ) async {
    setLoginPreferfalse();
    currentUID = null;
    uID = null;
    await signOutFromMAil(context);
    await signoutFromGoogle(
      context,
    );
    print(currentUID);
    print(uID);
  }

/////////////////////////////////////////////
  signOutFromMAil(context) async {
    await FirebaseAuth.instance.signOut();
  }

  signoutFromGoogle(context) async {
    await GoogleSignIn().signOut();
  }
}

customeShowDiolog(String title, BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => AlertDialog(
      content: Text(title),
      actions: <Widget>[
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("OK"))
      ],
    ),
  );
}

void noti(msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: const Color.fromARGB(148, 238, 238, 238),
    textColor: Colors.black,
    fontSize: 15.0,
  );
}
