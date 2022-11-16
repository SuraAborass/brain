import 'package:flutter/material.dart';

import '../../Constants/font_styles.dart';


Widget pageTitle(title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: title5,
        ),
      ],
    ),
  );
}

