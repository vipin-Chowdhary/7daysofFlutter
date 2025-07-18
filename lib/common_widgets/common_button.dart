// import 'package:flutter/material.dart';
//
// import '../models/catalog.dart';
//
// class CommonButton extends StatefulWidget {
//   final VoidCallback button;
//   final String text;
//   final bool isSelectedColor;
//   const CommonButton({
//     super.key,
//     required this.button,
//     required this.text,
//
//     required this.isSelectedColor,
//   });
//  final List commonList = <ClickButtonModel>[
//     ClickButtonModel(id: 1, isModelTrue: false),
//     ClickButtonModel(id: 2, isModelTrue: false),
//     ClickButtonModel(id: 3, isModelTrue: false),
//     ClickButtonModel(id: 4, isModelTrue: false),
//   ];
//
//   @override
//   State<CommonButton> createState() => _CommonButtonState();
// }
//
// class _CommonButtonState extends State<CommonButton> {
//   @override
//   Widget build(BuildContext context) {
//     return  ListView.builder(itemCount:
//       itemBuilder: (context, index) {
//
//       return GestureDetector(
//         onTap: widget.button,
//         child: Container(
//           height: 40,
//           width: 80,
//           color: widget.isSelectedColor ? Colors.green : Colors.grey,
//           child: Center(child: Text(widget.text)),
//         ),
//       );
//     },);
//   }
// }
//
