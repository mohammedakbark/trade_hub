import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Privacypolicyyy extends StatefulWidget {
  const Privacypolicyyy({super.key});

  @override
  State<Privacypolicyyy> createState() => _PrivacypolicyyyState();
}

class _PrivacypolicyyyState extends State<Privacypolicyyy> {
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
              'Privacy policy',
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


          //========================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: Text(
              'Cancelation Policy',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: const Color(0xff7A00E6)),
            ),
          ),

          //========================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 20),
            child: Text(
              'Users can cancel their accounts at any time by navigating to the "Account Settings" section in the app. Upon cancellation, all personal data and user-generated content will be permanently deleted from our servers. Please note that this action is irreversible, and any ongoing transactions, chats, or moments will be lost. If you have any questions or need assistance with account cancellation, feel free to contact our support team for help. We value your privacy and are committed to ensuring a smooth and secure cancellation process.',
              style: GoogleFonts.radioCanada(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.26,
                  color: const Color(0xff585858)),
            ),
          ),

          //========================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, top: 15),
            child: Text(
              'Terms & Conditions',
              style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                  color: const Color(0xff7A00E6)),
            ),
          ),

          //========================================================================================================

          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, right: 20),
            child: Text(
              '1. Acceptance of Terms\n'
              '    - Users must accept these terms and conditions to use the app.\n    - Terms may be updated, and continued use implies acceptance of changes.',
              style: GoogleFonts.radioCanada(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.26,
                  color: const Color(0xff585858)),
            ),
          ),

          //--------------------------------------------------------------------------------------------------------------------------------------------

          Padding(
            padding: const EdgeInsets.only(left: 30, top:20, right: 20),
            child: Text(
              '2. User Eligibility\n'
                  '    - Users must be of legal age to use the app, or have parental consent if underage.',
              style: GoogleFonts.radioCanada(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.26,
                  color: const Color(0xff585858)),
            ),
          ),

          //--------------------------------------------------------------------------------------------------------------------------------------------


          Padding(
            padding: const EdgeInsets.only(left: 30, top:20, right: 20),
            child: Text(
              '3. User Accounts\n'
                  '    - Users are responsible for maintaining the confidentiality of their account information.\n    - Users agree to provide accurate and up-to-date information during registration.',
              style: GoogleFonts.radioCanada(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.26,
                  color: const Color(0xff585858)),
            ),
          ),

          //--------------------------------------------------------------------------------------------------------------------------------------------


          Padding(
            padding: const EdgeInsets.only(left: 30, top:20, right: 20,bottom: 50),
            child: Text(
              '4. User Conduct\n'
                  '    - Users agree not to engage in unlawful, offensive, or harmful behavior on the app',
              style: GoogleFonts.radioCanada(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.26,
                  color: const Color(0xff585858)),
            ),
          ),

          //--------------------------------------------------------------------------------------------------------------------------------------------

          //========================================================================================================
        ],
      )),
    );
  }
}
