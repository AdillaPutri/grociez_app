import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class greenButton extends StatelessWidget {
  greenButton({
    required this.name,
    required this.ontap,
  });

  String name;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
        onPressed: ontap,
        child: Text(
          name,
          style: GoogleFonts.poppins(fontSize: 16),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xff53B175)),
          fixedSize: MaterialStatePropertyAll(Size(364, 67)),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17))),
        ),
      ),
    );
  }
}
