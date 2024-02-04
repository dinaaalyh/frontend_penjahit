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
            padding: const EdgeInsets.only(top: 0, right: 10),
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
              padding: EdgeInsets.only(top: 15, left: 5, right: 5),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Blouse",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Rp100.000",
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
                                Icons.star,
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
              height: 330,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/1.jpeg'),
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
              padding: EdgeInsets.only(top: 0, left: 20, right: 20),
              height: 325,
              decoration: BoxDecoration(),
              child: IndexedStack(
                index: selected,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.only(left: 15, right: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            text:
                                "Dapatkan penampilan yang anggun dan modern dengan blouse kami yang penuh gaya. Blouse ini dirancang untuk menonjolkan kecantikan Anda sambil memberikan kenyamanan sepanjang hari. Dibuat dengan bahan berkualitas tinggi yang lembut dan ringan, memberikan sentuhan mewah pada setiap gerakan Anda.\nBlouse ini tersedia dalam berbagai warna yang menawan, memungkinkan Anda menyesuaikannya dengan gaya pribadi Anda. Pilihan ukuran yang beragam juga memastikan bahwa setiap wanita dapat menemukan blouse yang sesuai dengan bentuk tubuh mereka. ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "cartPage");
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
                      ],
                    ),
                  ),
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
                                  25.0), // Adjust theradius as needed
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
                              Navigator.pushNamed(context, "cartPage");
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
    );
  }
}
