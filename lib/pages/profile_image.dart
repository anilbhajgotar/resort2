// import 'package:flutter/material.dart';

// class CircleAvatarWithTransition extends StatelessWidget {
//   /// the base color of the images background and its concentric circles.
//   final Color primaryColor;

//   /// the profile image to be displayed.
//   final ImageProvider image;

//   ///the diameter of the entire widget, including the concentric circles.
//   final double size;

//   /// the width between the edges of each concentric circle.
//   final double transitionBorderwidth;

//   const CircleAvatarWithTransition(
//       {Key? key,
//       required Color this.primaryColor,
//       required ImageProvider this.image,
//       this.size = 190.0,
//       this.transitionBorderwidth = 20.0})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: AlignmentDirectional.center,
//       children: <Widget>[
//         Container(
//             child: Container(
//           height: size,
//           width: size,
//           decoration: BoxDecoration(
//               shape: BoxShape.circle, color: primaryColor.withOpacity(0.05)),
//         )),
//         Container(
//           child: Container(
//               height: size - transitionBorderwidth,
//               width: size - transitionBorderwidth,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: RadialGradient(
//                     stops: [0.01, 0.5],
//                     colors: [Colors.white, primaryColor.withOpacity(0.1)]),
//               )),
//         ),
//         Container(
//           child: Container(
//               height: size - (transitionBorderwidth * 2),
//               width: size - (transitionBorderwidth * 2),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: primaryColor.withOpacity(0.4))),
//         ),
//         Container(
//           child: Container(
//               height: size - (transitionBorderwidth * 3),
//               width: size - (transitionBorderwidth * 3),
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: primaryColor.withOpacity(0.5))),
//         ),
//         Container(
//             child: Container(
//                 height: size - (transitionBorderwidth * 4),
//                 width: size - (transitionBorderwidth * 4),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     image: DecorationImage(fit: BoxFit.cover, image: image))))
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

class FinanceListTile extends StatelessWidget {
  final String text;
  final Widget leadingIcon;
  final Widget trailingIcon;
  final Function() onTap;
  final Color color;
  const FinanceListTile(
      {required this.text,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.onTap,
      this.color = const Color(0xFF4338CA),
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          text,
          textScaleFactor: 1,
        ),
        trailing: trailingIcon,
        selected: false,
        onTap: onTap,
      ),
      textColor: color,
      iconColor: color,
    );
  }
}
