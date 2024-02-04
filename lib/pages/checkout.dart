import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(186, 239, 239, 239),
          padding: EdgeInsets.all(15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 14,
              ),
              Container(
                height: 116,
                width: 335,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 85,
                      width: 335,
                      padding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Jl. Cipto Mk Margasari No. 41",
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Change address",
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: Colors.pink,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 210,
                width: 335,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summary Item",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 180,
                      width: 335,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          2,
                          (index) {
                            return ListTile(
                              leading: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                              ),
                              title: Text(
                                "Blouse",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                "\Rp100.000",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Text(
                                "Qty 1",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: Color(0xffBABEBF),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 90, // jarak summarry ke voc
                width: 335,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 335,
                      padding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Enter voucher code",
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: Color(0xffBABEBF),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Spacer(),
                          Container(
                            width: 102,
                            height: 32,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.green[700]!,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              color: Colors.green[100],
                            ),
                            child: Center(
                              child: Text(
                                "Use voucher",
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  color: Colors.green[700],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              SizedBox(
                height: 180,
                width: 335,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Summary Order",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 120,
                      width: 335,
                      padding:
                          EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(
                          //   height: 5,
                          // ),
                          Row(
                            children: [
                              Text(
                                "Delivery Fee",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color(0xff516971),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\Rp10.000",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color(0xff516971),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                "Subtotal",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color(0xff516971),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\Rp200.000",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color(0xff516971),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Text(
                                "Total",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color(0xff516971),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\Rp210.000",
                                style: GoogleFonts.inter(
                                  fontSize: 13,
                                  color: Color(0xff516971),
                                  fontWeight: FontWeight.normal,
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
              Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 94,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total Payment",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Color(0xff516971),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Rp210.000",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    color: Color(0xff516971),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Spacer(),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Info'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('Your order was successed'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "homePage");
                            },
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Buy Now",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
