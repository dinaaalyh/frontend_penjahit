import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key}) : super(key: key);

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    var menu = ["Details", "Order"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(""),
        leading: IconButton(
          icon: Icon(
            FeatherIcons.chevronLeft,
            size: 24,
            color: Colors.black,
          ),
          onPressed: () {
            // Navigate back or perform some action
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: IconButton(
              icon: Icon(
                FeatherIcons.shoppingBag,
                size: 24,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "cartPage");
                // Open shopping bag or perform some action
                print("Shopping Bag pressed!");
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.only(top: 0, left: 5, right: 5),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product Title",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Rp500.000",
                          style: GoogleFonts.inter(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "234 ratings",
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 5),
                              child: Icon(
                                Icons.star_half,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/card_bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 35,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  menu.length,
                  (index) {
                    var item = menu[index];
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              item,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            (selected == index)
                                ? Container(
                                    height: 2,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(),
              child: IndexedStack(
                index: selected,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amberAccent,
                    ),
                    padding: EdgeInsets.all(16),
                    child: Container(
                      height: 800,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            print("Button pressed!");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            minimumSize: Size(300, 40),
                          ),
                          child: Text(
                            "Add to cart",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 5.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Ukuran",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 5.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Warna",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 5.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Lingkar dada",
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 5.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(
                                  25.0), // Adjust the radius as needed
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Lingkar pinggang",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              print("Button pressed!");
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              minimumSize: Size(300, 40),
                            ),
                            child: Text(
                              "Beli Sekarang",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 60,
      //   decoration: BoxDecoration(
      //     color: Colors.transparent,
      //   ),
      //   child: Center(
      //     child: ElevatedButton(
      //       onPressed: () {
      //         // Add your button's functionality here
      //         print("Button pressed!");
      //       },
      //       style: ElevatedButton.styleFrom(
      //         primary: Colors.black, // Button color
      //         minimumSize: Size(300, 40), // Button width and height
      //       ),
      //       child: Text(
      //         "Add to cart",
      //         style: TextStyle(fontSize: 14, color: Colors.white),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:projek/components/button.dart';
// import 'package:projek/widgets/item_app_bar.dart';
// import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

// class ItemDetailPage extends StatelessWidget {
//   const ItemDetailPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: [
//                 ItemAppBar(),
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 15),
                //   padding: EdgeInsets.only(top: 0, left: 15, right: 5),
                //   child: Row(
                //     children: [
                //       Padding(
                //         padding: EdgeInsets.symmetric(vertical: 10),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                              // "Product Title",
                              // style: GoogleFonts.inter(
                              //   fontSize: 16,
                              //   fontWeight: FontWeight.bold,
                              //   color: Colors.black,
                              // ),
                //             ),
                //             Text(
                //               "Rp500.000",
                //               style: GoogleFonts.inter(
                //                 fontSize: 12.5,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.black,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       Spacer(),
                //       Padding(
                //         padding: EdgeInsets.only(top: 0),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.end,
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               "234 ratings",
                //               style: GoogleFonts.inter(
                //                 fontSize: 10,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.grey,
                //               ),
                //             ),
                //             Row(
                //               children: [
                //                 Container(
                //                   padding: EdgeInsets.only(top: 5),
                //                   child: Icon(
                //                     Icons.star,
                //                     color: Colors.black,
                //                     size: 14,
                //                   ),
                //                 ),
                //                 Container(
                //                   padding: EdgeInsets.only(top: 5),
                //                   child: Icon(
                //                     Icons.star,
                //                     color: Colors.black,
                //                     size: 14,
                //                   ),
                //                 ),
                //                 Container(
                //                   padding: EdgeInsets.only(top: 5),
                //                   child: Icon(
                //                     Icons.star,
                //                     color: Colors.black,
                //                     size: 14,
                //                   ),
                //                 ),
                //                 Container(
                //                   padding: EdgeInsets.only(top: 5),
                //                   child: Icon(
                //                     Icons.star,
                //                     color: Colors.black,
                //                     size: 14,
                //                   ),
                //                 ),
                //                 Container(
                //                   padding: EdgeInsets.only(top: 5),
                //                   child: Icon(
                //                     Icons.star_half,
                //                     color: Colors.black,
                //                     size: 14,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 0),
//                   child: Image.asset(
//                     "assets/images/card_bg.png",
//                     width: screenWidth,
//                     height: 300,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ContainedTabBarView(
//               tabBarProperties: TabBarProperties(
//                 height: 40,
//                 labelColor: Colors.black,
//                 unselectedLabelColor: Colors.grey,
//                 indicatorColor: Colors.black,
//               ),
//               tabs: [
//                 Text("Detail"),
//                 Text("Order"),
//               ],
//               views: [
//                 SizedBox.expand(
//                   child: Container(
//                     child: Center(
//                       child: Text("Detail item"),
//                     ),
//                   ),
//                 ),
//                 SizedBox.expand(
//                   child: Container(
//                     margin: EdgeInsets.only(left: 0),
//                     child: Padding(
//                       padding: EdgeInsets.only(top: 15, left: 20, right: 20),
//                       child: Column(
//                         children: [
//                           TextField(
//                             decoration: InputDecoration(
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 16.0, vertical: 5.0),
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     const BorderSide(color: Colors.black),
//                                 borderRadius: BorderRadius.circular(
//                                     25.0), // Adjust the radius as needed
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide:
//                                     const BorderSide(color: Colors.black),
//                                 borderRadius: BorderRadius.circular(
//                                     25.0), // Adjust the radius as needed
//                               ),
//                               fillColor: Colors.white,
//                               filled: true,
//                               labelText: "Ukuran",
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           TextField(
//                             decoration: InputDecoration(
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 16.0, vertical: 5.0),
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     const BorderSide(color: Colors.black),
//                                 borderRadius: BorderRadius.circular(
//                                     25.0), // Adjust the radius as needed
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide:
//                                     const BorderSide(color: Colors.black),
//                                 borderRadius: BorderRadius.circular(
//                                     25.0), // Adjust the radius as needed
//                               ),
//                               fillColor: Colors.white,
//                               filled: true,
//                               labelText: "Warna",
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           TextField(
//                             decoration: InputDecoration(
//                               contentPadding: const EdgeInsets.symmetric(
//                                   horizontal: 16.0, vertical: 5.0),
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide:
//                                     const BorderSide(color: Colors.black),
//                                 borderRadius: BorderRadius.circular(
//                                     25.0), // Adjust the radius as needed
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide:
//                                     const BorderSide(color: Colors.black),
//                                 borderRadius: BorderRadius.circular(
//                                     25.0), // Adjust the radius as needed
//                               ),
//                               fillColor: Colors.white,
//                               filled: true,
//                               labelText: "Lingkar dada",
//                             ),
//                           ),
//                           SizedBox(height: 10),
                          // TextField(
                          //   decoration: InputDecoration(
                          //     contentPadding: const EdgeInsets.symmetric(
                          //         horizontal: 16.0, vertical: 5.0),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderSide:
                          //           const BorderSide(color: Colors.black),
                          //       borderRadius: BorderRadius.circular(
                          //           25.0), // Adjust the radius as needed
                          //     ),
                          //     focusedBorder: OutlineInputBorder(
                          //       borderSide:
                          //           const BorderSide(color: Colors.black),
                          //       borderRadius: BorderRadius.circular(
                          //           25.0), // Adjust the radius as needed
                          //     ),
                          //     fillColor: Colors.white,
                          //     filled: true,
                          //     labelText: "Lingkar pinggang",
                          //   ),
                          // ),
//                           SizedBox(height: 15),
//                           Row(
//                             children: [
//                               Container(
//                                 alignment: Alignment.center,
//                                 height: 30,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   color: Colors.black,
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 child: Text(
//                                   "Shop now",
//                                   style: GoogleFonts.inter(
//                                     fontSize: 12,
//                                     color: Color.fromARGB(255, 255, 255, 255),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
