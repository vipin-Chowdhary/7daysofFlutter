import 'dart:ui';
import 'package:flutter/material.dart';

// import '../../core/constants/app_color_constants.dart';
// import '../../core/constants/app_fonts.dart';
class SliverCardItems{
  static  List<ContactPerson> peopleCard = [
  ContactPerson(
  name: 'Ravi Kumar',
  number: 6239124775,
  image: AppImagesConstants.networkImage1,
  click: false
  ),

  ContactPerson(
  name: 'Anjali Sharma',
  number: 6239124236,
  click: false,
  image: ""),
  ContactPerson(
  name: 'Amit Singh',
  number: 6298765432,
  click: false,
  image: AppImagesConstants.networkImage3),
  ContactPerson(
  name: 'Vipin Chowdhary',
  number: 6258739503,
  click: false,
  image: AppImagesConstants.networkImage4),
  ContactPerson(
  name: 'Vikas Kumar',
  number: 9503742185,
  click: false,
  image: AppImagesConstants.networkImage5),
  ContactPerson(
  name: 'Vishal Kumar',
  number: 9707643157,
  click: false,
  image: AppImagesConstants.networkImage6),
  ContactPerson(
  name: 'Sunil Kumar',
  number: 8965342158,
  click: false,
  image: AppImagesConstants.networkImage7),
  ContactPerson(
  name: 'Harikrishan Yadav',
  number: 58942397654,
  click: false,
  image: AppImagesConstants.networkImage8),
  ContactPerson(
  name: 'Naman Cse',
  number: 9653246789,
  click: false,
  image: AppImagesConstants.networkImage9),
  ContactPerson(
  name: 'Davinder Singh',
  number: 8907654237,
  click: false,
  image: AppImagesConstants.networkImage10),
  ContactPerson(
  name: 'Dipak Yadav',
  number: 8593629412,
  click: false,
  image: AppImagesConstants.networkImage11),
  ContactPerson(
  name: 'Vivek Bhardwaj',
  number:7346903218,
  click: false,
  image: AppImagesConstants.networkImage12),
  ];
}

class ContactPerson {

  final String name;
  final int ? number;
  final String ? image;
  bool click;

  ContactPerson({ required this.name,  this.number,this.image,  this.click = false});
}

class AppImagesConstants{
  static const networkImage1 ="https://t3.ftcdn.net/jpg/02/43/12/34/240_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg";
  static const networkImage2 ="https://t4.ftcdn.net/jpg/03/83/25/83/240_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg";
  static const networkImage3 ="https://t3.ftcdn.net/jpg/06/08/88/12/240_F_608881224_4lhFUqMFy0gsNSZlSujQUpiOqvVHejlw.jpg";
  static const networkImage4 ="https://t3.ftcdn.net/jpg/03/02/88/46/240_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg";
  static const networkImage5 ="https://t3.ftcdn.net/jpg/02/99/04/20/240_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg";
  static const networkImage6 ="https://t4.ftcdn.net/jpg/01/51/99/39/240_F_151993994_mmAYzngmSbNRr6Fxma67Od3WHrSkfG5I.jpg";
  static const networkImage7 ="https://t3.ftcdn.net/jpg/02/43/76/54/240_F_243765470_a0hN5zuTKIonTbRGldi8KajuvhSiWvDx.jpg";
  static const networkImage8 ="https://t4.ftcdn.net/jpg/02/92/95/17/240_F_292951705_zv47wnXkjzHzSouYLpYcNgTOOosDv1ml.jpg";
  static const networkImage9 ="https://t4.ftcdn.net/jpg/03/03/11/75/240_F_303117590_NNmo6BS2fOBEmDp8uKs2maYmt03t8fSL.jpg";
  static const networkImage10 ="https://t4.ftcdn.net/jpg/05/23/62/91/240_F_523629123_RpAModBJXgCTPfilfYaCIbPaalFIjbvv.jpg";
  static const networkImage11 ="https://t3.ftcdn.net/jpg/03/36/94/42/240_F_336944276_tpWzmwFi6JfZln5VlfBC1BZu5jgDOAl8.jpg";
  static const networkImage12 ="https://t3.ftcdn.net/jpg/05/86/65/86/240_F_586658640_LoqbtbLWRWdrY9LoydA0L6tuoDZdjl93.jpg";
}


class AppColorConstants{

  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color colorBlack = Color(0xFF000000);
  static const Color color131713 = Color(0xFF131713);
  static const Color color94B7A3 = Color(0xFF94B7A3);
  static const Color colorF1F1F1 = Color(0xFFF1F1F1);
  static const Color color797979 = Color(0xFF797979);
  static const Color color9D9D9D = Color(0xFF9D9D9D);
  static const Color colorB5B5B5 = Color(0xFFB5B5B5);
  static const Color color4560CB = Color(0xFF4560CB);
  static const Color colorEC624F = Color(0xFFEC624F);
  static const Color colorF6F6F6 = Color(0xFFF6F6F6);
  static const Color colorD3D7DD = Color(0xFFD3D7DD);
  static const Color colorB7D0C1 = Color(0xFFB7D0C1);
}
//


class AppTextStyles {
  //  ============ For SamiBold 600 ===================
  static const TextStyle heading3 = TextStyle(
    fontSize: 14,
    // fontFamily: FontsFamily.dmSansSemibold,
    color: AppColorConstants.colorEC624F,
  );
  static const TextStyle heading2 = TextStyle(
    fontSize: 16,
    // fontFamily: FontsFamily.dmSansSemibold,
    color: AppColorConstants.colorEC624F,
  );
  static const TextStyle appTitle = TextStyle(
    fontSize: 22,
    // fontFamily: FontsFamily.dmSansSemibold,
    color: AppColorConstants.color131713,
  );
  static const TextStyle heading1 = TextStyle(
    fontSize: 26,
    // fontFamily: FontsFamily.dmSansSemibold,
    color: AppColorConstants.color131713,
  );
  static const TextStyle forAlertText = TextStyle(
    fontSize: 26,
    // fontFamily: FontsFamily.dmSansSemibold,
    color: AppColorConstants.colorWhite,
  );

  static const TextStyle balanceMoney = TextStyle(
    fontSize: 32,
    // fontFamily: FontsFamily.dmSansSemibold,
    color: AppColorConstants.color131713,
  );


  // ================== For Regular 400 =================================
  static const TextStyle subTitle797979 = TextStyle(
    fontSize: 12,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.color797979,
  );
  static const TextStyle subTitle131713 = TextStyle(
    fontSize: 14,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.color131713,
  );
  static const TextStyle subTitleWhite = TextStyle(
    fontSize: 14,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.colorWhite,
  );
  static const TextStyle textGrey = TextStyle(
    fontSize: 14,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.color797979,
  );


  static const TextStyle buttonStylesWhite = TextStyle(
    fontSize: 16,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.colorWhite,
  );
  static const TextStyle buttonStylesBlack = TextStyle(
    fontSize: 16,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.color131713,
  );
  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 20,
    // fontFamily: FontsFamily.dmSansRegular,
    color: AppColorConstants.color131713,
  );

// ========500 Medium ================
  static const TextStyle mediumEC624F = TextStyle(
    fontSize: 12,
    // fontFamily: FontsFamily.dmSansMedium,
    color: AppColorConstants.colorEC624F,
  );
// =========700 Bold =============

  static const TextStyle firstLatterBold = TextStyle(
    fontSize: 20,
    // fontFamily: FontsFamily.dmSansBold,
    color: AppColorConstants.colorWhite,
  );
}

