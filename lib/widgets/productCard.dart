import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class productCard extends StatelessWidget {
  productCard({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.ontapCard,
  });

  String image;
  String name;
  String description;
  String price;
  void Function()? ontapCard;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.only(right: 15),
        child: InkWell(
          onTap: ontapCard,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(2),
            width: 175,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xffD9D9D9), width: 2),
            ),
            child: Column(
              children: [
                Container(
                  width: 173,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Image.network(image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        description,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(17),
                            onTap: () {},
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Color(0xff53B175),
                              ),
                              child: Center(
                                child: Image.asset("images/tambah.png"),
                              ),
                            ),
                          ),
                        ],
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
