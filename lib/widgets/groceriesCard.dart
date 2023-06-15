import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class groceriesCard extends StatelessWidget {
  groceriesCard({
    required this.name,
    required this.image,
    required this.color,
    required this.ontap,
  });

  String image;
  String name;
  Color? color;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 237.45,
          height: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(18),
                height: 100,
                width: 70,
                child: Center(
                  child: Image.asset(image),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
