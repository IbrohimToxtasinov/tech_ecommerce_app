import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/screens/forgot_password.dart';
import 'package:tech_ecommerce_app/screens/home_page.dart';
import 'package:tech_ecommerce_app/screens/register_page.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';
import 'package:tech_ecommerce_app/widgets/build_button_widget.dart';
import 'package:tech_ecommerce_app/widgets/build_textformfield_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool isPas = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.c5956E9,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 70),
              child: Text("Welcome back",
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
                    Text("Login",
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        )),
                    const SizedBox(
                      height: 44,
                    ),
                    buildTextFormFieldWidget(
                        name: "Enter your Email",
                        name2: "Email",
                        imagename: MyImages.iconMessage),
                    const SizedBox(height: 42),
                    buildTextFormFieldPassWidget(
                      name: "Enter your Password",
                      name2: "Password",
                      imagename: MyImages.iconLock,
                      isPas: isPas,
                      showtext: "Show",
                      onTap: () {
                        setState(() {
                          isPas = !isPas;
                        });
                      },
                    ),
                    const SizedBox(height: 24),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ForgotPasswordPage()));
                      },
                      child: Text(
                        "Forgot passcode?",
                        style: GoogleFonts.raleway(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: MyColors.c5956E9),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 62,
                    ),
                    buildbuttonWidget(context,
                        buttonname: "Login",
                        color: MyColors.c5956E9,
                        textcolor: MyColors.cFFFFFF,
                        pagename: const HomePage()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const RegisterPage()));
                          },
                          child: Text(
                            "Create account",
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
