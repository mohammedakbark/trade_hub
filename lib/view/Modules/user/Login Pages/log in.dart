import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/otp.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/sign%20in.dart';
import 'package:trade_hub/view/Modules/user/navigation%20bar.dart';
import 'package:trade_hub/viewmodel/firebase_auths.dart';

class Loginnn extends StatefulWidget {
  const Loginnn({super.key});

  @override
  State<Loginnn> createState() => _LoginnnState();
}

class _LoginnnState extends State<Loginnn> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    final hight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffB7A6FC),
      body: SingleChildScrollView(
        child: Container(
          height: hight,
          width: width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/8099902 1.png',
                  ))),
          child: Form(
            key: _formfield,
            child: Column(children: [
              SizedBox(
                height: hight * .2,
              ),

              Text(
                'Welcome!',
                style: GoogleFonts.jua(
                    fontWeight: FontWeight.w400,
                    fontSize: 50,
                    color: Colors.white),
              ),

              //--------------------------------------------------------------------------------------------------------------
              SizedBox(
                height: hight * .1,
              ),
              //--------------------------------------------------------------------------------------------------------------

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
                      fillColor: Color(0xCEFFD465),
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
                      fillColor: const Color(0xCEFFD465),
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
                onTap: () {
                  if (_formfield.currentState!.validate()) {
                    authInstence.login(
                        emailController.text, passController.text, context, 0);
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
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.orangeAccent,
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
              SizedBox(
                height: hight * .04,
              ),
              SizedBox(
                width: width,
                height: hight * .04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ",
                        style: GoogleFonts.judson(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => const Signinnn()));
                      },
                      child: Text("SignUp ",
                          style: GoogleFonts.judson(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.amber,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: hight * .1,
              ),
              Text('or sign up using',
                  style: GoogleFonts.judson(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  )),
              SizedBox(
                height: hight * .02,
              ),
              Container(
                width: width * .1,
                height: hight * .04,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white),
                child: Image.asset(
                  'assets/Wrapper.png',
                  width: width * .05,
                  height: hight * .04,
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       width: 40.75,
              //       height: 43,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(7),
              //           color: Colors.white),
              //       child: Image.asset('assets/Shape.png'),
              //     ),

              //     //-------------------------------------------------------------------------------------------
              //     Padding(
              //       padding: const EdgeInsets.only(left: 10),
              //       child: Container(
              //         width: 40.75,
              //         height: 43,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(7),
              //             color: Colors.white),
              //         child: Image.asset('assets/Shape (1).png'),
              //       ),
              //     ),

              //     //-------------------------------------------------------------------------------------------
              //     Padding(
              //       padding: const EdgeInsets.only(left: 10),
              //       child: Container(
              //         width: 40.75,
              //         height: 43,
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(7),
              //             color: Colors.white),
              //         child: Image.asset('assets/Wrapper.png'),
              //       ),
              //     ),
              // ],
              // )
            ]),
          ),
        ),
      ),
    );
  }
}
