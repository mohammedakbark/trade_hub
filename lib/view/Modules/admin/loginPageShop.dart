import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/utils/variable.dart';

class LoginPageShop extends StatefulWidget {
  LoginPageShop({super.key});

  @override
  State<LoginPageShop> createState() => _LoginPageShopState();
}

class _LoginPageShopState extends State<LoginPageShop> {
  final _formfield = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passController = TextEditingController();

  bool passToggle = false;

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFF6565),
      body: Form(
        key: _formfield,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: hight * .25,
              ),
              Text(
                'Welcome!',
                style: GoogleFonts.jua(
                    fontWeight: FontWeight.w400,
                    fontSize: 50,
                    color: Colors.white),
              ),
              SizedBox(
                height: hight * .1,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      // border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'enter your email',
                      hintStyle: TextStyle(
                          color: Color(0xff544C4C),
                          fontWeight: FontWeight.w500,
                          fontSize: 14)),
                  validator: (value) {
                    bool emailvalid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);

                    if (value.isEmpty) {
                      return "Enter Email";
                    } else if (!emailvalid) {
                      return "Enter Valied Email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              //--------------------------------------------------------------------------------------------------------------

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      border: InputBorder.none,
                      hintText: ' password',
                      hintStyle: const TextStyle(
                          color: Color(0xff544C4C),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Entee Password";
                    } else if (passController.text.length < 6) {
                      return "Password Length Should not be more than 6 characters";
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              //--------------------------------------------------------------------------------------------------------------
              SizedBox(
                height: hight * .08,
              ),
              InkWell(
                onTap: () async {
                  if (_formfield.currentState!.validate()) {
                    await authInstence.login(
                        emailController.text, passController.text, context, 1);
                    //  Navigator.pushReplacement(context,
                    //         MaterialPageRoute(
                    //       builder: (context) {
                    //         return const Navigationnn();
                    //       },
                    //     )));
                    emailController.clear();
                    passController.clear();
                  }
                },
                child: Container(
                  width: width * .25,
                  height: hight * .04,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFF6565),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      )),
                  child: Center(
                    child: Text('Log in',
                        style: GoogleFonts.judson(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
