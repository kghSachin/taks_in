import 'package:flutter/material.dart';

class FingerPrintModelSheet extends StatelessWidget {
  const FingerPrintModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 42),
      height: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MaterialButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.grey[400],
                  child: const Icon(Icons.close, color: Colors.white),
                ),
              ),
            ],
          ),
          const Text(
            "Fingerprint for Login",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.orange,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Authentication is required to continue",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const Text(
            "Place your finger on the fingerprint scanner to login",
            style: TextStyle(
              fontSize: 13,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          const Divider(
            height: 24,
          ),
          Center(
            child: CircleAvatar(
                radius: 45,
                backgroundImage: const AssetImage("assets/icons/circle.png"),
                child: Image.asset("assets/icons/finger_white.png")),
          ),
          const SizedBox(
            height: 8,
          ),
          const Center(
            child: Text("Touch the fingerprint sensor",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                )),
          ),
        ],
      ),
    );
  }
}
