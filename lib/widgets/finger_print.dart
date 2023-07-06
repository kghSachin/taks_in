import 'package:flutter/material.dart';
import 'package:taskassigned/widgets/model_bottomsheet.dart';

class FingerPrint extends StatelessWidget {
  const FingerPrint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 176,
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
      child: MaterialButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const FingerPrintModelSheet();
              });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/fluent_fingerprint-48-filled.png'),
            const SizedBox(height: 12),
            const Text(
              "Finger Print",
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
