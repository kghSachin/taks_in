import 'package:flutter/material.dart';

class FacialBottomSheet extends StatelessWidget {
  const FacialBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 340,
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
            "Face authentication for Login",
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
            "Scan your face to verify your identity to login",
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
              radius: 50,
              backgroundImage: const AssetImage("assets/icons/circle.png"),
              child: Image.asset("assets/icons/mdi_facial-recognition.png",
                  height: 40, width: 40),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.orange, width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minimumSize: const Size(400, 44),
            ),
            child: const Text(
              "Get Started",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
