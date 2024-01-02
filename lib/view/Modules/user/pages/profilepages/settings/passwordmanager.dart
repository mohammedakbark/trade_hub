import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Passwordmanagerrr extends StatefulWidget {
  const Passwordmanagerrr({super.key});

  @override
  State<Passwordmanagerrr> createState() => _PasswordmanagerrrState();
}

class _PasswordmanagerrrState extends State<Passwordmanagerrr> {

  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        foregroundColor: null,
        shadowColor: null,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(onTap: () {
              Navigator.pop(context);
            },

              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    border: Border.all(color: Colors.black)),
                child: const Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            Text(
              'Password Manager',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 27,
                  color: const Color(0xffB7A6FC)),
            ),
            const SizedBox(
              width: 40,
              height: 40,
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [

          //==============================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Currrent Password',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xff1D1E20)),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 35, top: 7),
            child: Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff544C4C99)),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffix: InkWell(
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

                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Forget Password',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xffFFAB2D)),
                  ),
                ),
              ],
            ),
          ),

          //==============================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'New Password',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xff1D1E20)),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 35, top: 7),
            child: Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff544C4C99)),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffix: InkWell(
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

                ),
              ),
            ),
          ),

          //==============================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'Confirm New Password',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color(0xff1D1E20)),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20, right: 35, top: 7),
            child: Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff544C4C99)),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextFormField(
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffix: InkWell(
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

                ),
              ),
            ),
          ),

          //=================================================================================================================

          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Container(
                    width: 136,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        color: const Color(0xff7A00E6)),
                    child:Center(
                      child: Text(
                        'Save Changes',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            color: Colors.white,
                      ),
                  ),
                    ),),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
