//
//
// import 'package:flutter/material.dart';
//
// import '../../models/sliver_card _items.dart';
//
// class ContactScreen extends StatefulWidget {
//   const ContactScreen({super.key});
//
//   @override
//   State<ContactScreen> createState() => _ContactScreenState();
// }
//
// class _ContactScreenState extends State<ContactScreen> {
//   int? selectedIndex;
//   bool isInvited = false;
//   Set<int> selectedIndexes = {};
//   bool selectedFriend = false;
//   List peopleContactsList = SliverCardItems.peopleCard;
//   List addNewPeopleContactsList = [];
//
//   TextEditingController searchController = TextEditingController();
//   void searching(String val) {
//     addNewPeopleContactsList = peopleContactsList
//         .where(
//             (e) => e.name.toString().toLowerCase().contains(val.toLowerCase()))
//         .toList();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColorConstants.colorF1F1F1,
//       // appBar: CommonAppBar(
//       //   title: AppStringConstants.contacts,
//       //   // actionList: [
//       //   //   GestureDetector(
//       //   //       onTap: () {
//       //   //         Navigator.push(
//       //   //             context,
//       //   //             MaterialPageRoute(
//       //   //               builder: (context) => NotificationsScreen(),
//       //   //             ));
//       //   //       },
//       //   //       child: CommonNotificationWidgets())
//       //   // ],
//       // ),
//       body: CustomScrollView(
//         slivers: [
//           // SliverAppBar(
//           //   expandedHeight: 180,
//           //   flexibleSpace: Container(
//           //     // color: Colors.red,
//           //     child: FlexibleSpaceBar(
//           //       background: Padding(
//           //         padding: const EdgeInsets.symmetric(horizontal: 16),
//           //         child: Column(
//           //           children: [
//           //             Padding(
//           //               padding: const EdgeInsets.symmetric(horizontal: 35),
//           //               child: Text(
//           //                 textAlign: TextAlign.center,
//           //                 AppStringConstants.contactSubtitle,
//           //                 style: AppTextStyles.textGrey,
//           //               ),
//           //             ),
//           //             SizedBox(height: 28),
//           //             CommonButtonWidgets(
//           //               widget: Text(
//           //                 textAlign: TextAlign.center,
//           //                 AppStringConstants.syncContacts,
//           //                 style: AppTextStyles.buttonStylesBlack,
//           //               ),
//           //               borderWidth: 1.0,
//           //               widthColor: AppColorConstants.color131713,
//           //               backGroundColor: AppColorConstants.colorF1F1F1,
//           //             ),
//           //             // SizedBox(height: 50),
//           //             // ====================
//           //             // CommonTextField(
//           //             //   controller: searchController,
//           //             //   prefixIcon: Padding(
//           //             //     padding: EdgeInsets.only(left: 16, right: 10),
//           //             //     child: Icon(Icons.search,
//           //             //         color: AppColorConstants.colorB5B5B5),
//           //             //   ),
//           //             //   hintText: AppStringConstants.contactSearch,
//           //             // ),
//           //             // SizedBox(height: 35),
//           //           ],
//           //         ),
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           SliverAppBar(
//             expandedHeight: 80,
//             pinned: true,
//             elevation: 0,
//             forceMaterialTransparency: true,
//             flexibleSpace: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: TextFormField(
//                 onChanged: (value) {
//                   setState(() {
//                     searching(value);
//                   });
//                 },
//                 controller: searchController,
//
//                 decoration: InputDecoration( hintText: "Contact Search",
//                 prefixIcon: Padding(
//                   padding: EdgeInsets.only(left: 16, right: 10),
//                   child:
//                   Icon(Icons.search, color: AppColorConstants.colorB5B5B5),
//                 ),
//                 ),
//
//               ),
//             ),
//           ),
//           // Contact List
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//
//               childCount: (addNewPeopleContactsList.isNotEmpty)
//                   ? addNewPeopleContactsList.length :
//               peopleContactsList.length,
//                   (context, index) {
//                 bool isSelectedFriend = selectedIndexes.contains(index);
//                 final contactsPeople = peopleContactsList[index];
//                 final addNewContactPeople = addNewPeopleContactsList[index];
//
//                 final bool isSelected = selectedIndex == index;
//                 if (addNewPeopleContactsList.isNotEmpty) {
//                   return
//                     GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedIndex = index;
//                         });
//                       },
//                       child: Card(
//                         margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                         color: isSelected
//                             ? AppColorConstants.color94B7A3
//                             : AppColorConstants.colorF6F6F6,
//                         elevation: 1,
//                         shadowColor: Colors.grey.withOpacity(0.5),
//                         child: ListTile(
//                           leading: Container(
//                             height: 40,
//                             width: 40,
//                             decoration: BoxDecoration(
//                                 color: AppColorConstants.colorB7D0C1,
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   width: (addNewContactPeople.image != null &&
//                                       addNewContactPeople.image
//                                           .toString()
//                                           .isNotEmpty)
//                                       ? 0.5
//                                       : 0,
//                                   color: (addNewContactPeople.image != null &&
//                                       addNewContactPeople.image
//                                           .toString()
//                                           .isNotEmpty)
//                                       ? AppColorConstants.color131713
//                                       : AppColorConstants.colorB7D0C1,
//                                 ),
//                                 image: (addNewContactPeople.image != null &&
//                                     addNewContactPeople.image
//                                         .toString()
//                                         .isNotEmpty)
//                                     ? DecorationImage(
//                                     image: NetworkImage(
//                                         addNewContactPeople.image.toString()),
//                                     fit: BoxFit.cover)
//                                     : null),
//                             child: (addNewContactPeople.image == null ||
//                                 addNewContactPeople.image.toString().isEmpty)
//                                 ? Center(
//                               child: Text(
//                                   addNewContactPeople.name[0].toUpperCase(),
//                                   style: AppTextStyles.firstLatterBold),
//                             )
//                                 : null,
//                           ),
//                           trailing: GestureDetector(
//                             onTap: () {
//                               setState(() {
//                                 if (isSelectedFriend) {
//                                   selectedIndexes.remove(index); // Deselect
//                                 } else {
//                                   selectedIndexes.add(index); // Select
//                                 }
//                               });
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 3),
//                               decoration: BoxDecoration(
//                                   color: isSelectedFriend
//                                       ? AppColorConstants.colorEC624F
//                                       : AppColorConstants.colorF6F6F6,
//                                   borderRadius: BorderRadius.circular(5),
//                                   border: Border.all(
//                                       width: isSelectedFriend ? 0 : 1,
//                                       color: isSelectedFriend
//                                           ? AppColorConstants.colorEC624F
//                                           : AppColorConstants.color131713)),
//                               child: Text(
//                                 isSelectedFriend
//                                     ? "InviteFriend"
//                                     : "OnYearly",
//                                 style: AppTextStyles.subTitle797979.copyWith(
//                                   color: AppColorConstants.color131713,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           subtitle: Text(
//                             addNewContactPeople.number.toString(),
//                             style: AppTextStyles.subTitle797979,
//                           ),
//                           title: Text(
//                             addNewContactPeople.name,
//                             style: AppTextStyles.subTitle131713,
//                           ),
//                         ),
//                       ),
//                     );
//                 }
//                 else if (addNewPeopleContactsList.isEmpty){
//                   return Container();
//                 }
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       selectedIndex = index;
//                     });
//                   },
//                   child: Card(
//                     margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                     color: isSelected
//                         ? AppColorConstants.color94B7A3
//                         : AppColorConstants.colorF6F6F6,
//                     elevation: 1,
//                     shadowColor: Colors.grey.withOpacity(0.5),
//                     child: ListTile(
//                       leading: Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                             color: AppColorConstants.colorB7D0C1,
//                             shape: BoxShape.circle,
//                             border: Border.all(
//                               width: (contactsPeople.image != null &&
//                                   contactsPeople.image
//                                       .toString()
//                                       .isNotEmpty)
//                                   ? 0.5
//                                   : 0,
//                               color: (contactsPeople.image != null &&
//                                   contactsPeople.image
//                                       .toString()
//                                       .isNotEmpty)
//                                   ? AppColorConstants.color131713
//                                   : AppColorConstants.colorB7D0C1,
//                             ),
//                             image: (contactsPeople.image != null &&
//                                 contactsPeople.image.toString().isNotEmpty)
//                                 ? DecorationImage(
//                                 image: NetworkImage(
//                                     contactsPeople.image.toString()),
//                                 fit: BoxFit.cover)
//                                 : null),
//                         child: (contactsPeople.image == null ||
//                             contactsPeople.image.toString().isEmpty)
//                             ? Center(
//                           child: Text(
//                               contactsPeople.name[0].toUpperCase(),
//                               style: AppTextStyles.firstLatterBold),
//                         )
//                             : null,
//                       ),
//                       trailing: GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             if (isSelectedFriend) {
//                               selectedIndexes.remove(index); // Deselect
//                             } else {
//                               selectedIndexes.add(index); // Select
//                             }
//                           });
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 3),
//                           decoration: BoxDecoration(
//                               color: isSelectedFriend
//                                   ? AppColorConstants.colorEC624F
//                                   : AppColorConstants.colorF6F6F6,
//                               borderRadius: BorderRadius.circular(5),
//                               border: Border.all(
//                                   width: isSelectedFriend ? 0 : 1,
//                                   color: isSelectedFriend
//                                       ? AppColorConstants.colorEC624F
//                                       : AppColorConstants.color131713)),
//                           child: Text(
//                             isSelectedFriend
//                                 ? "InviteFriend"
//                                 : "OnYearly",
//                             style: AppTextStyles.subTitle797979.copyWith(
//                               color: AppColorConstants.color131713,
//                             ),
//                           ),
//                         ),
//                       ),
//                       subtitle: Text(
//                         contactsPeople.number.toString(),
//                         style: AppTextStyles.subTitle797979,
//                       ),
//                       title: Text(
//                         contactsPeople.name,
//                         style: AppTextStyles.subTitle131713,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//
//     //   ====================== Start ==========================
//     // Scaffold(
//     //   backgroundColor: AppColorConstants.colorF1F1F1,
//     //   appBar: CommonAppBar(
//     //     title: AppStringConstants.contacts,
//     //     actionList: [
//     //       GestureDetector(
//     //           onTap: () {
//     //             Navigator.push(
//     //                 context,
//     //                 MaterialPageRoute(
//     //                   builder: (context) => NotificationsScreen(),
//     //                 ));
//     //           },
//     //           child: CommonNotificationWidgets())
//     //     ],
//     //   ),
//     //   body: Padding(
//     //     padding: const EdgeInsets.symmetric(horizontal: 16),
//     //     child: Column(
//     //       crossAxisAlignment: CrossAxisAlignment.center,
//     //       children: [
//     //         Padding(
//     //           padding: const EdgeInsets.symmetric(horizontal: 35),
//     //           child: Text(
//     //             textAlign: TextAlign.center,
//     //             AppStringConstants.contactSubtitle,
//     //             style: AppTextStyles.textGrey,
//     //           ),
//     //         ),
//     //         SizedBox(height: 35),
//     //         CommonButtonWidgets(
//     //           widget: Text(
//     //             textAlign: TextAlign.center,
//     //             AppStringConstants.syncContacts,
//     //             style: AppTextStyles.buttonStylesBlack,
//     //           ),
//     //           borderWidth: 1.0,
//     //           widthColor: AppColorConstants.color131713,
//     //           backGroundColor: AppColorConstants.colorF1F1F1,
//     //         ),
//     //         SizedBox(height: 50),
//     //         CommonTextField(
//     //           controller: searchController,
//     //           prefixIcon: Padding(
//     //             padding: EdgeInsets.only(left: 16, right: 10),
//     //             child:
//     //                 Icon(Icons.search, color: AppColorConstants.colorB5B5B5),
//     //           ),
//     //           hintText: AppStringConstants.contactSearch,
//     //         ),
//     //         SizedBox(height: 35),
//     //         ContactsVerticalListCards(),
//     //
//     //       ],
//     //     ),
//     //   ));
//     //   ================== End ===============
//   }
// }
