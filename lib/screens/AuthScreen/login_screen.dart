import 'package:flutter/material.dart';
import 'package:taskassigned/widgets/face_recognization.dart';
import 'package:taskassigned/widgets/finger_print.dart';
import 'package:taskassigned/constants/string_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 44,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      StringConstants.loginScreenHeader,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        size: 24,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Please ',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: StringConstants.logIn,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.orange,
                        ),
                      ),
                      TextSpan(
                        text: StringConstants.toAccessYour,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: StringConstants.profile,
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  StringConstants.onceYouHaveLoggedIn,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  StringConstants.oneClickLoginUsing,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Row(
                  children: [
                    FingerPrint(),
                    Spacer(),
                    FaceRecognization(),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  StringConstants.loginWithYourPhoneNumber,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 32,
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.grey,
                        size: 24,
                      ),
                      border: InputBorder.none,
                      hintText: StringConstants.phoneNumberHint,
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(400, 44),
                  ),
                  child: const Text(
                    StringConstants.requestOtp,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  StringConstants.copyOrUseYourSocialAcc,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                        size: 24,
                      ),
                      border: InputBorder.none,
                      hintText: StringConstants.logInWithYourEmailId,
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const SizedBox(),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 12, 0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 65,
                          height: 65,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(4, 4),
                                blurRadius: 6,
                              )
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                              ),
                              child: const SizedBox(
                                child: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(StringConstants.dontHaveAnAcc,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          )),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          StringConstants.signUp,
                          style: TextStyle(color: Colors.orange),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
