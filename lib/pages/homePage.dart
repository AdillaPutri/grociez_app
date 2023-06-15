import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceriesapp/pages/detailProduct.dart';
import 'package:groceriesapp/widgets/ddLocation.dart';
import 'package:groceriesapp/widgets/groceriesCard.dart';
import 'package:groceriesapp/widgets/productCard.dart';
import 'package:groceriesapp/widgets/search.dart';
import 'package:groceriesapp/model.dart';
import 'package:groceriesapp/repository.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<Menu> listmenu = [];
  Repository repository = Repository();

  getData() async{
    listmenu = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset("images/wortel.png"),
              //dari sini
              Container(
                // color: Colors.amber,
                margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    location(),
                    search(),
                    SizedBox(height: 20),
                    Container(
                      height: 114.99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset("images/promo.png"),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exclusive Offer",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: 250,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,                          
                        itemBuilder: (contex, index ){
                           return productCard(
                                name: listmenu[index].name,
                                image: listmenu[index].photo,
                                description: "1kg. Priceg",
                                price: listmenu[index].price,
                                ontapCard: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return detailPproduct();
                                    }),
                                  );
                                },
                              );
                              
                        }, itemCount: listmenu.length),
                      ),
                    ),

                 
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Selling",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                   SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: 250,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,                          
                        itemBuilder: (contex, index ){
                           return productCard(
                                name: listmenu[index].name,
                                image: listmenu[index].photo,
                                description: "1kg. Priceg",
                                price: listmenu[index].price,
                                ontapCard: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return detailPproduct();
                                    }),
                                  );
                                },
                              );
                              
                        }, itemCount: listmenu.length),
                      ),
                    ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Groceries",
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          groceriesCard(
                            name: "Pulses",
                            image: "images/pulses.png",
                            color: Color(0xffFEF2E4),
                            ontap: () {},
                          ),
                          SizedBox(width: 15),
                          groceriesCard(
                            name: "Rice",
                            image: "images/rice.png",
                            color: Color(0xffE5F4EB),
                            ontap: () {},
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    )
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
