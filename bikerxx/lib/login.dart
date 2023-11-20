import 'package:bikerxx/otp_verification.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppConstants {
  static const String helloNiceToMeetYou = 'Hello, nice to meet you!';
  static const String realTimeDoorstepBikeServiceApp =
      'Real-time Doorstep Bike Service App';
  static const String enterMobileNumber = 'Enter your mobile number';
  static const String byCreating = 'By creating an account, you agree to our';
  static const String termsOfService = 'Terms of Service';
  static const String of = 'of';
  static const String privacyPolicy = 'Privacy Policy';
  static const String phoneVerification = 'Phone Verification';
  static const String enterOtp = 'Enter your OTP code below';
  static const String resendCode = 'Resend code in';
  static const String seconds = 'seconds';
}

class AppColors {
  static const Color blackColor = Color(0xff303030);
  static const Color redColor = Color(0xffFD4D4D);
  static const Color greyColor = Color(0xffD6D6D6);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color lightColor = Color(0xffC3CDD6);
}

Widget redIntroWidget() {
  return Container(
    width: Get.width,
    height: Get.height * 0.60,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/carousel_slider/mask.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/carousel_slider/bikerx.png',
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'assets/carousel_slider/logo_textw.png',
        ),
      ],
    ),
  );
}

Widget loginWidget(
    CountryCode countryCode, Function onCountryChange, Function onSubmit) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(
          text: AppConstants.helloNiceToMeetYou,
        ),
        textWidget(
          text: AppConstants.realTimeDoorstepBikeServiceApp,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 3,
                blurRadius: 3,
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => onCountryChange(),
                  child: Container(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Container(
                            child: countryCode.flagImage(),
                          ),
                        ),
                        textWidget(text: countryCode.dialCode),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 55,
                color: Colors.black.withOpacity(0.2),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: TextField(
                    // onTap: () {
                    //   Get.to(() => const OtpVerificationScreen());
                    // },
                    onSubmitted: (String? input) => onSubmit(input),
                    decoration: InputDecoration(
                      hintText: AppConstants.enterMobileNumber,
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.normal),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              children: [
                const TextSpan(
                  text: "${AppConstants.byCreating} ",
                ),
                TextSpan(
                  text: "${AppConstants.termsOfService} ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: " and ",
                ),
                TextSpan(
                  text: "${AppConstants.privacyPolicy} ",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget textWidget(
    {required String text,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal}) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final countryPicker = const FlCountryCodePicker();

  CountryCode countryCode =
      const CountryCode(name: 'India', code: 'IN', dialCode: '+91');

  onSubmit(String? input) {
    Get.to(() => OtpVerificationScreen(countryCode.dialCode+input!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              redIntroWidget(),
              const SizedBox(
                height: 40,
              ),
              loginWidget(countryCode, () async {
                final code = await countryPicker.showPicker(context: context);
                if (code != null) countryCode = code;
                setState(() {});
              }, onSubmit),
            ],
          ),
        ),
      ),
    );
  }
}
