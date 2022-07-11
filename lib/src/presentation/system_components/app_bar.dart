import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/src/presentation/utils/space_utils.dart';
import 'package:foodly/src/presentation/widgets/widgets.dart';

class SystemAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SystemAppBar({
    Key? key,
    this.leading,
    required this.tittle,
    this.actions,
  }) : super(key: key);

  const SystemAppBar.closable({
    Key? key,
    this.tittle,
    this.leading = const CloseButton(),
    this.actions,
  }) : super(key: key);

  final Widget? leading;
  final String? tittle;
  final List<Widget>? actions;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 44.w,
      automaticallyImplyLeading: false,
      actions: [if (actions != null) ...actions!, 16.width],
      title: tittle != null ? Text(tittle!) : null,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: (leading ??
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const SvgIcon(
                'asset/icons/back.svg',
                size: 24,
              ),
            )),
      ),
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(Icons.close),
      onTap: () => Navigator.pop(context),
    );
  }
}
