import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class detailButton extends StatelessWidget {
  detailButton({
    required this.name,
    required this.ontap,
  });

  String name;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(color: Color(0xffE2E2E2)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/backright.png"),
                splashRadius: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
