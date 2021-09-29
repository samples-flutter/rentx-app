import 'package:flutter/material.dart';
import 'package:rentx/styles/app_colors.dart';

class AppBarRendX extends StatelessWidget implements PreferredSizeWidget {
  const AppBarRendX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Icon(Icons.arrow_back_ios_outlined, color: AppColors.grayTextDetails,),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
