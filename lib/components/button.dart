import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final Color buttonColor;
  final double borderRadius;
  final TextStyle textStyle;
  final EdgeInsetsGeometry textPadding;
  final FontStyle fontStyle;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    required this.buttonColor,
    required this.borderRadius,
    required this.textStyle,
    this.textPadding = const EdgeInsets.all(7.0),
    this.fontStyle = FontStyle.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // width: buttonWidth,
        // height: buttonHeight,
        padding: const EdgeInsets.all(3),
        margin: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Padding(
            padding: textPadding,
            child: Text(
              buttonText,
              style: textStyle.copyWith(fontStyle: fontStyle),
            ),
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class MyButton extends StatelessWidget {
//   final Function()? onTap;
//   final String buttonText; // Tambahkan properti untuk menentukan teks tombol

//   const MyButton({super.key, required this.onTap, required this.buttonText});
//   // const MyButton({super.key, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(7),
//         margin: const EdgeInsets.symmetric(horizontal: 45),
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(17),
//         ),
//         child: Center(
//           child: Text(
//             buttonText, // Gunakan teks dari properti buttonText
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 12.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
