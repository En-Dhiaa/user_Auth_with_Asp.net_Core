import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/Theme/device_utily.dart';
import '../../../utils/constants/sizes.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar(
      {super.key,
      this.title,
      this.showBackArrow = true,
      this.leadingIcon,
      this.action,
      this.leadingOnPresed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPresed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => leadingOnPresed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
