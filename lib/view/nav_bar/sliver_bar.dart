import 'package:flutter/material.dart';

import '../../models/sliver_card _items.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  int? selectedIndex;
  bool isInvited = false;
  Set<int> selectedIndexes = {};
  bool selectedFriend = false;
  List peopleContactsList = SliverCardItems.peopleCard;
  List addNewPeopleContactsList = [];

  TextEditingController searchController = TextEditingController();
  void searching(String val) {
    addNewPeopleContactsList =
        peopleContactsList
            .where(
              (e) =>
                  e.name.toString().toLowerCase().contains(val.toLowerCase()),
            )
            .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      backgroundColor: AppColorConstants.colorF1F1F1,

      appBar: AppBar(backgroundColor: Colors.transparent,
         elevation: 0,

          scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,

        title: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          elevation: 4,
          child: TextField(
            onChanged: (value) {
              setState(() {
                searching(value);
              });
            },
            controller: searchController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount:
                    addNewPeopleContactsList.isNotEmpty
                        ? addNewPeopleContactsList.length
                        : peopleContactsList.length,

                (context, index) {
                  bool isSelectedFriend = selectedIndexes.contains(index);
                  // final contactsPeople = peopleContactsList[index];
                  // final addNewContactPeople = addNewPeopleContactsList[index];

                  final bool isSelected = selectedIndex == index;
                  if (addNewPeopleContactsList.isNotEmpty) {
                    final addNewContactPeople = addNewPeopleContactsList[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Card(
                        margin: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        color:
                            isSelected
                                ? AppColorConstants.color94B7A3
                                : AppColorConstants.colorF6F6F6,
                        elevation: 1,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColorConstants.colorB7D0C1,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width:
                                    (addNewContactPeople.image != null &&
                                            addNewContactPeople.image
                                                .toString()
                                                .isNotEmpty)
                                        ? 0.5
                                        : 0,
                                color:
                                    (addNewContactPeople.image != null &&
                                            addNewContactPeople.image
                                                .toString()
                                                .isNotEmpty)
                                        ? AppColorConstants.color131713
                                        : AppColorConstants.colorB7D0C1,
                              ),
                              image:
                                  (addNewContactPeople.image != null &&
                                          addNewContactPeople.image
                                              .toString()
                                              .isNotEmpty)
                                      ? DecorationImage(
                                        image: NetworkImage(
                                          addNewContactPeople.image.toString(),
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                      : null,
                            ),
                            child:
                                (addNewContactPeople.image == null ||
                                        addNewContactPeople.image
                                            .toString()
                                            .isEmpty)
                                    ? Center(
                                      child: Text(
                                        addNewContactPeople.name[0]
                                            .toUpperCase(),
                                        style: AppTextStyles.firstLatterBold,
                                      ),
                                    )
                                    : null,
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelectedFriend) {
                                  selectedIndexes.remove(index); // Deselect
                                } else {
                                  selectedIndexes.add(index); // Select
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    isSelectedFriend
                                        ? AppColorConstants.colorEC624F
                                        : AppColorConstants.colorF6F6F6,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: isSelectedFriend ? 0 : 1,
                                  color:
                                      isSelectedFriend
                                          ? AppColorConstants.colorEC624F
                                          : AppColorConstants.color131713,
                                ),
                              ),
                              child: Text(
                                isSelectedFriend ? "InviteFriend" : "OnYearly",
                                style: AppTextStyles.subTitle797979.copyWith(
                                  color: AppColorConstants.color131713,
                                ),
                              ),
                            ),
                          ),
                          subtitle: Text(
                            addNewContactPeople.number.toString(),
                            style: AppTextStyles.subTitle797979,
                          ),
                          title: Text(
                            addNewContactPeople.name,
                            style: AppTextStyles.subTitle131713,
                          ),
                        ),
                      ),
                    );
                  } else {
                    final contactsPeople = peopleContactsList[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Card(
                        margin: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        color:
                            isSelected
                                ? AppColorConstants.color94B7A3
                                : AppColorConstants.colorF6F6F6,
                        elevation: 1,
                        shadowColor: Colors.grey.withOpacity(0.5),
                        child: ListTile(
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: AppColorConstants.colorB7D0C1,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width:
                                    (contactsPeople.image != null &&
                                            contactsPeople.image
                                                .toString()
                                                .isNotEmpty)
                                        ? 0.5
                                        : 0,
                                color:
                                    (contactsPeople.image != null &&
                                            contactsPeople.image
                                                .toString()
                                                .isNotEmpty)
                                        ? AppColorConstants.color131713
                                        : AppColorConstants.colorB7D0C1,
                              ),
                              image:
                                  (contactsPeople.image != null &&
                                          contactsPeople.image
                                              .toString()
                                              .isNotEmpty)
                                      ? DecorationImage(
                                        image: NetworkImage(
                                          contactsPeople.image.toString(),
                                        ),
                                        fit: BoxFit.cover,
                                      )
                                      : null,
                            ),
                            child:
                                (contactsPeople.image == null ||
                                        contactsPeople.image.toString().isEmpty)
                                    ? Center(
                                      child: Text(
                                        contactsPeople.name[0].toUpperCase(),
                                        style: AppTextStyles.firstLatterBold,
                                      ),
                                    )
                                    : null,
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSelectedFriend) {
                                  selectedIndexes.remove(index); // Deselect
                                } else {
                                  selectedIndexes.add(index); // Select
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    isSelectedFriend
                                        ? AppColorConstants.colorEC624F
                                        : AppColorConstants.colorF6F6F6,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: isSelectedFriend ? 0 : 1,
                                  color:
                                      isSelectedFriend
                                          ? AppColorConstants.colorEC624F
                                          : AppColorConstants.color131713,
                                ),
                              ),
                              child: Text(
                                isSelectedFriend ? "InviteFriend" : "OnYearly",
                                style: AppTextStyles.subTitle797979.copyWith(
                                  color: AppColorConstants.color131713,
                                ),
                              ),
                            ),
                          ),
                          subtitle: Text(
                            contactsPeople.number.toString(),
                            style: AppTextStyles.subTitle797979,
                          ),
                          title: Text(
                            contactsPeople.name,
                            style: AppTextStyles.subTitle131713,
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//  contactPeople

//========== newContactPeople
