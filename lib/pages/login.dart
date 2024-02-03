import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:projek/components/button.dart';
import 'package:projek/components/textfield.dart';
import 'package:projek/pages/services/auth_services.dart';
import 'package:projek/pages/sign_up.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void signUserIn() {
      // Implementasi login
    }

    void navigateToSignUp() {
      // Navigasi ke halaman sign up
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SignUpPage()),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 247),
                // MyTextField(
                //   controller: usernameController,
                //   hintText: 'Username',
                //   obscureText: false,
                // ),
                // const SizedBox(height: 7),
                // MyTextField(
                //   controller: passwordController,
                //   hintText: 'Password',
                //   obscureText: true,
                // ),
                const SizedBox(height: 30),
                MyButton(
                  // onTap: signUserIn,
                  onTap: () => AuthService.signInWithGoogle(context),
                  buttonText: 'Log In',
                  buttonColor: Colors.black,
                  borderRadius: 17.0,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: TextButton(
                    onPressed: navigateToSignUp,
                    child: const Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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




// import 'package:flutter/material.dart';
// import 'package:projek/components/button.dart';
// import 'package:projek/components/textfield.dart';
// import 'package:projek/pages/sign_up.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/login.png'),
//             fit: BoxFit.scaleDown, // atau sesuaikan dengan kebutuhan Anda
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: LoginForm(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class LoginForm extends StatefulWidget {
//   const LoginForm({Key? key}) : super(key: key);

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   final usernameController = TextEditingController();
//   final passwordController = TextEditingController();

//   void signUserIn() {
//     // Implementasi login
//   }

//   void navigateToSignUp() {
//     // Navigasi ke halaman sign up
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const SignUpPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(height: 247),
//           MyTextField(
//             controller: usernameController,
//             hintText: 'Username',
//             obscureText: false,
//           ),
//           const SizedBox(height: 7),
//           MyTextField(
//             controller: passwordController,
//             hintText: 'Password',
//             obscureText: true,
//           ),
//           const SizedBox(height: 30),
//           MyButton(
//             onTap: signUserIn,
//             buttonText: 'Log In',
//             buttonColor: Colors.black,
//             borderRadius: 17.0,
//             textStyle: const TextStyle(
//               color: Colors.white,
//               fontSize: 12.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 7),
//           Padding(
//             padding: const EdgeInsets.symmetric(),
//             child: TextButton(
//               onPressed: navigateToSignUp,
//               child: const Text(
//                 "Don't have an account? Sign up",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 11.0,
//                   decoration: TextDecoration.underline,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
