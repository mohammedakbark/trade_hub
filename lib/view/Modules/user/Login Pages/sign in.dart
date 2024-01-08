import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trade_hub/utils/variable.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/log%20in.dart';
import 'package:trade_hub/view/Modules/user/Login%20Pages/otp.dart';

class Signinnn extends StatefulWidget {
  const Signinnn({super.key});

  @override
  State<Signinnn> createState() => _SigninnnState();
}

class _SigninnnState extends State<Signinnn> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final userController = TextEditingController();
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
                  controller: userController,
                  // obscureText: passToggle,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xCEFFD465),
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
                    border: InputBorder.none,
                    hintText: 'username',
                    hintStyle: TextStyle(
                        color: Color(0xff544C4C),
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Entee Username";
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
                height: hight * .065,
              ),
              InkWell(
                onTap: () async {
                  if (_formfield.currentState!.validate()) {
                    authInstence.configaration(emailController.text);
                    authInstence.sendotp();

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Otppp(
                                  email: emailController.text,
                                  password: passController.text,
                                  userNmae: userController.text,
                                )));

                    // emailController.clear();
                    // passController.clear();
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
                    child: Text('Sign up',
                        style: GoogleFonts.judson(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: hight * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account ? ",
                      style: GoogleFonts.judson(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => const Loginnn()));
                    },
                    child: Text("Login ",
                        style: GoogleFonts.judson(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.amber,
                        )),
                  )
                ],
              ),
              // SizedBox(
              //   height: hight * .01,
              // ),
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
                child: Image.asset('assets/Wrapper.png'),
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

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: const Color(0xffB7A6FC),
  //     body: SingleChildScrollView(
  //       child: Form(
  //         key: _formfield,
  //         child: Column(
  //           children: [
  //             Stack(
  //               children: [
  //                 Row(mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Expanded(
  //                         child: Image.asset(
  //                       'assets/8099902 1.png',
  //                       height: 800,
  //                       width: 800,
  //                     )),
  //                   ],
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.only(top: 200),
  //                   child: Column(children: [
  //                     Text(
  //                       'Welcome!',
  //                       style: GoogleFonts.jua(
  //                           fontWeight: FontWeight.w400,
  //                           fontSize: 50,
  //                           color: Colors.white),
  //                     ),

  //                     //--------------------------------------------------------------------------------------------------------------

  //                     Padding(
  //                       padding:
  //                           const EdgeInsets.only(left: 50, right: 50, top: 20),
  //                       child: Positioned(
  //                         child: Container(
  //                           width: double.infinity,
  //                           height: 51,
  //                           decoration: ShapeDecoration(
  //                             color: const Color(0xCEFFD465),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(23),
  //                             ),
  //                           ),
  //                           child: Padding(
  //                             padding: const EdgeInsets.only(left: 20),
  //                             child: TextFormField(
  //                               controller: emailController,
  //                               decoration: const InputDecoration(
  //                                   border: InputBorder.none,
  //                                   hintText: ' enter your email',
  //                                   hintStyle: TextStyle(
  //                                       color: Color(0xff544C4C),
  //                                       fontWeight: FontWeight.w500,
  //                                       fontSize: 14)),

  //                               validator: (value) {
  //                                 bool emailvalid = RegExp(
  //                                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //                                     .hasMatch(value!);

  //                                 if (value!.isEmpty) {
  //                                   return "Enter Email";
  //                                 } else if (!emailvalid) {
  //                                   return "Enter Valied Email";
  //                                 }
  //                               },

  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),

  //                     //--------------------------------------------------------------------------------------------------------------

  //                     Padding(
  //                       padding:
  //                           const EdgeInsets.only(left: 50, right: 50, top: 10),
  //                       child: Positioned(
  //                         child: Container(
  //                           width: double.infinity,
  //                           height: 51,
  //                           decoration: ShapeDecoration(
  //                             color: const Color(0xCEFFD465),
  //                             shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(23),
  //                             ),
  //                           ),
  //                           child: Padding(
  //                             padding: const EdgeInsets.only(left: 20),
  //                             child: TextFormField(
  //                               controller: userController,
  //                               decoration: const InputDecoration(
  //                                   border: InputBorder.none,
  //                                   hintText: ' username',
  //                                   hintStyle: TextStyle(
  //                                       color: Color(0xff544C4C),
  //                                       fontWeight: FontWeight.w500,
  //                                       fontSize: 14)),

  //                               validator: (value) {
  //                                 if (value!.isEmpty) {
  //                                   return "Entee Username";
  //                                 } else if (passController.text.length < 6) {
  //                                   return "Username Length Should not be more than 6 characters";
  //                                 }
  //                               },

  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),

  //                     //--------------------------------------------------------------------------------------------------------------

  //                     Padding(
  //                       padding: const EdgeInsets.only(
  //                           left: 50, right: 50, top: 10, bottom: 50),
  //                       child: Container(
  //                         width: double.infinity,
  //                         height: 51,
  //                         decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(23),
  //                           color: const Color(0xCEFFD465),
  //                         ),
  //                         child: Padding(
  //                           padding: const EdgeInsets.only(left: 20,top: 0),
  //                           child: TextFormField(
  //                             controller: passController,
  //                             obscureText: passToggle,
  //                             decoration: InputDecoration(
  //                                 border: InputBorder.none,
  //                                 hintText: ' password',
  //                                 hintStyle: const TextStyle(
  //                                     color: Color(0xff544C4C),
  //                                     fontWeight: FontWeight.w500,
  //                                     fontSize: 14),
  //                                 suffix: InkWell(
  //                                   onTap: () {
  //                                     setState(() {
  //                                       passToggle = !passToggle;
  //                                     });
  //                                   },
  //                                   child: Padding(
  //                                     padding: const EdgeInsets.only(right: 20),
  //                                     child: Icon(passToggle
  //                                         ? Icons.visibility
  //                                         : Icons.visibility_off),
  //                                   ),
  //                                 )),
  //                             validator: (value) {
  //                               if (value!.isEmpty) {
  //                                 return "Entee Password";
  //                               } else if (passController.text.length < 6) {
  //                                 return "Password Length Should not be more than 6 characters";
  //                               }
  //                             },
  //                           ),
  //                         ),
  //                       ),
  //                     ),

  //                     //--------------------------------------------------------------------------------------------------------------

  //                     InkWell(onTap: () {
  //                       if(_formfield.currentState!.validate()){
  //                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
  //                           return const Otppp();
  //                         },));
  //                         emailController.clear();
  //                         passController.clear();
  //                         userController.clear();
  //                       }

  //                     },
  //                       child: Container(
  //                         width: 96,
  //                         height: 39,
  //                         decoration: BoxDecoration(
  //                             borderRadius: BorderRadius.circular(10),
  //                             color: Colors.yellow,
  //                             border: Border.all(
  //                               color: Colors.orangeAccent,
  //                               width: 3,
  //                             )),
  //                         child: Center(
  //                           child: Text('Sign in',
  //                               style: GoogleFonts.judson(
  //                                 fontWeight: FontWeight.w400,
  //                                 fontSize: 18,
  //                                 color: Colors.white,
  //                               )),
  //                         ),
  //                       ),
  //                     ),

  //                     Padding(
  //                       padding: const EdgeInsets.only(top: 20),
  //                       child: Text('or sign up using',
  //                           style: GoogleFonts.judson(
  //                             fontWeight: FontWeight.w400,
  //                             fontSize: 18,
  //                             color: Colors.white,
  //                           )),
  //                     ),

  //                     Padding(
  //                       padding: const EdgeInsets.only(top: 20),
  //                       child: Row(mainAxisAlignment: MainAxisAlignment.center,
  //                         children: [
  //                           Container(
  //                             width: 40.75,
  //                             height: 43,
  //                             decoration: BoxDecoration(
  //                                 borderRadius: BorderRadius.circular(7),
  //                                 color: Colors.white),
  //                             child: Image.asset('assets/Shape.png'),
  //                           ),

  //                           //-------------------------------------------------------------------------------------------
  //                           Padding(
  //                               padding: const EdgeInsets.only(left: 10),
  //                               child:
  //                                   Container(
  //                                     width: 40.75,
  //                                     height: 43,
  //                                     decoration: BoxDecoration(
  //                                         borderRadius: BorderRadius.circular(7),
  //                                         color: Colors.white),
  //                                     child: Image.asset('assets/Shape (1).png'),
  //                                   ),
  //                           ),

  //                           //-------------------------------------------------------------------------------------------
  //                           Padding(
  //                             padding: const EdgeInsets.only(left: 10),
  //                             child:
  //                             Container(
  //                               width: 40.75,
  //                               height: 43,
  //                               decoration: BoxDecoration(
  //                                   borderRadius: BorderRadius.circular(7),
  //                                   color: Colors.white),
  //                               child: Image.asset('assets/Wrapper.png'),
  //                             ),
  //                           ),

  //                         ],
  //                       ),
  //                     )
  //                   ]),
  //                 )
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
