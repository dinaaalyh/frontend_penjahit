import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/user.jpeg'),
            ),
            Text(
              'Anisya Hamidah',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 40.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    side: BorderSide.none,
                    shape: StadiumBorder()),
                child:
                    const Text('LOGOUT', style: TextStyle(color: Colors.black)),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.black,
                ),
                title: Text(
                  'Edit Profil',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'intel', fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.https_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'Kebijakan Privasi',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'intel', fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.help_center_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  'Bantuan',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'intel', fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.library_books_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  'Syarat dan Ketentuan',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Inter'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'anisyadina.2961@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.teal.shade900,
                      fontFamily: 'Inter'),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.accessibility_new_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  'Tentang Kami',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'intel', fontSize: 20.0),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundImage: AssetImage(
//                   'assets/profile_image.jpg'), // Replace with your image asset
//             ),
//             SizedBox(height: 16),
//             Text(
//               'John Doe',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8),
//             Text('john.doe@example.com'),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement logout or other profile actions
//               },
//               child: Text('Logout'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
