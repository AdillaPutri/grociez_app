import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class countProduct extends StatelessWidget {
  const countProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 150.67,
        height: 45.67,
        // color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/min.png"),
              splashRadius: 16,
            ),
            Container(
              width: 45.67,
              height: 45.67,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffE2E2E2),
                ),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: Text(
                  "1",
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("images/max.png"),
              splashRadius: 16,
            ),
          ],
        ),
      ),
    );
  }
}
