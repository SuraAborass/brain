import 'package:flutter/material.dart';
import '../../Constants/colors.dart';


PreferredSizeWidget customAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: BrainColors.primary,
      elevation: 0,
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.dehaze_outlined,
              size: 30,
              color: Colors.white,
            ));
      }),
      title: Image.asset(
        'assets/images/logo.png',
        height: 32,
        width: 74,
        alignment: Alignment.topLeft,
      ),
      centerTitle: true,


    );
  }

