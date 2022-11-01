import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/screens/login_page.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';
import 'package:tech_ecommerce_app/widgets/build_button_widget.dart';
import 'package:tech_ecommerce_app/widgets/build_textformfield_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

bool isPas = false;

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.c5956E9,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 30),
              child: Text("Create account",
                  style: GoogleFonts.raleway(
                      fontSize: 65,
                      fontWeight: FontWeight.w800,
                      color: MyColors.cFFFFFF)),
            ),
            const SizedBox(height: 40),
            Container(
              height: 1000,
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 50, right: 50, top: 36, bottom: 150),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: MyColors.cFFFFFF),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Register",
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    buildTextFormFieldWidget(
                        name: "Enter your Name",
                        name2: "Name",
                        imagename: MyImages.iconPerson),
                    const SizedBox(height: 42),
                    buildTextFormFieldWidget(
                        name: "Enter your Email",
                        name2: "Email",
                        imagename: MyImages.iconMessage),
                    const SizedBox(height: 24),
                    const SizedBox(height: 42),
                    buildTextFormFieldPassWidget(
                        name: "Enter your Password",
                        name2: "Password",
                        imagename: MyImages.iconLock,
                        isPas: isPas,
                        onTap: () {
                          setState(() {
                            isPas = !isPas;
                          });
                        },
                        showtext: "Show"),
                    const SizedBox(height: 40),
                    buildbuttonWidget(context,
                        buttonname: "Register",
                        color: MyColors.c5956E9,
                        textcolor: MyColors.cFFFFFF,
                        pagename: const LoginPage()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const LoginPage()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.raleway(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: MyColors.c5956E9,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
