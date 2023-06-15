import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(left: 23),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF2F3F2),
        ),
        height: 51.57,
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              icon: Image.asset("images/search.png"),
              border: InputBorder.none,
              hintText: "Search Store",
              hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
