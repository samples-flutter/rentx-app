import 'package:flutter/material.dart';
import 'package:rentx/styles/app_colors.dart';

class AppBarRendX extends StatelessWidget implements PreferredSizeWidget {
  final Function() onBackClick;

  const AppBarRendX({Key? key, required this.onBackClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: AppColors.grayTextDetails,
        ),
        onPressed: onBackClick,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
