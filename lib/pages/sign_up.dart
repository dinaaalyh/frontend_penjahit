import 'package:flutter/material.dart';
import 'package:projek/components/button.dart';
import 'package:projek/components/textfield.dart';
import 'package:projek/pages/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void signUserUp() {
      // Implementasi sign up
    }

    void navigateToLogin() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/signup.png'),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 227),
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 7),
                MyTextField(
                  controller: emailController,
                  hintText: 'E-mail',
                  obscureText: false,
                ),
                const SizedBox(height: 7),
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                MyButton(
                  onTap: signUserUp,
                  buttonText: 'Sign Up',
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
                    onPressed: navigateToLogin,
                    child: const Text(
                      "Have an account? Log in",
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
// import 'package:projek/pages/login.dart';

// class SignUpPage extends StatelessWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/signup.png'),
//             fit: BoxFit.scaleDown, // atau sesuaikan dengan kebutuhan Anda
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: SignUpForm(),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SignUpForm extends StatefulWidget {
//   const SignUpForm({Key? key}) : super(key: key);

//   @override
//   _SignUpFormState createState() => _SignUpFormState();
// }

// class _SignUpFormState extends State<SignUpForm> {
//   final usernameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   void signUserUp() {
//     // Implementasi sign up
//   }

//   void navigateToLogin() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const LoginPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(height: 227),
//           MyTextField(
//             controller: usernameController,
//             hintText: 'Username',
//             obscureText: false,
//           ),
//           const SizedBox(height: 7),
//           MyTextField(
//             controller: emailController,
//             hintText: 'E-mail',
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
//             onTap: signUserUp,
//             buttonText: 'Sign Up',
//             buttonColor: Colors.black,
//             borderRadius: 17.0,
//             textStyle: const TextStyle(
//               color: Colors.white,
//               fontSize: 12.0,
//               fontWeight: FontWeight.bold,
//             ),
//             // buttonWidth: 230.0,
//           ),
//           // MyButton(
//           //   onTap: signUserUp,
//           //   buttonText: "Sign Up",
//           // ),
//           const SizedBox(height: 7),
//           Padding(
//             padding: const EdgeInsets.symmetric(),
//             child: TextButton(
//               onPressed: navigateToLogin,
//               child: const Text(
//                 "Have an account? Log in",
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
