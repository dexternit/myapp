import 'package:flutter/material.dart';
import 'package:myapp/app/core/values/icons.dart';

//import 'package:myapp/app/core/values/colors.dart';

List<Icon> getIcons() {
  return const [
    Icon(IconData(personIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(worklcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(movieIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(sportIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(travelIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(shoplcon, fontFamily: 'MaterialIcons')),
  ];
}
