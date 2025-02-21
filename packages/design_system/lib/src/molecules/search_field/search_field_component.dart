import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SearchFieldComponent extends StatelessWidget {
  const SearchFieldComponent({
    super.key,
    this.hintText,
    this.onChanged,
  });

  final String? hintText;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: BeTextStyles.headline3,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16).w,
          child: Icon(
            BeIcons.search,
            size: 24.w,
            color: BeColors.black,
          ),
        ),
        hintText: hintText,
        hintStyle: BeTextStyles.headline3,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      ),
      onChanged: onChanged,
    );
  }
}
