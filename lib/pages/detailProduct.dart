import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceriesapp/widgets/countProduct.dart';
import 'package:groceriesapp/widgets/detailButton.dart';
import 'package:groceriesapp/widgets/greenButton.dart';

class detailPproduct extends StatelessWidget {
  const detailPproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  color: Color(0xffF2F3F2),
                ),
                height: 341.44,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Image.asset("images/back.png"),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Vector.png")),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 329.34,
                      height: 211.26,
                      child: Image.asset("images/redApple.png"),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.amber,
                margin: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Naturel Red Aplle",
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                        IconButton.outlined(
                          splashRadius: 16,
                          onPressed: () {},
                          icon: Image.asset("images/heart.png"),
                        ),
                      ],
                    ),
                    Text(
                      "1kg, Price",
                      style: GoogleFonts.poppins(
                          color: Color(0xff7C7C7C), fontSize: 14),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        countProduct(),
                        Text(
                          "Rp.29.999-,",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Image.asset("images/garis.png"),
                    SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Detail",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/backdown.png"),
                          splashRadius: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              "Apples Are Nutritious. Aplles May Be Good For Weight Loss. Aplles May Be Good For Your Hearts. As Part Of A Healtful And Varied Diet.",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Color(0xff7C7C7C),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19),
                    detailButton(
                      name: "Nutritions",
                      ontap: () {},
                    ),
                    detailButton(
                      name: "Review",
                      ontap: () {},
                    ),
                    SizedBox(height: 20),
                    greenButton(
                      name: "Add To Basket",
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
