import 'package:flutter/material.dart';
import 'package:tap_voucher/values/app_colors.dart';

class TextFieldSearcher extends StatelessWidget {
  const TextFieldSearcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, right: 8, left: 8),
      child: TextField(
        keyboardType: TextInputType.text,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
          suffixIcon: const Icon(
            Icons.search,
            size: 28,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1,
              color: AppColor.greyOulineTextFildColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 1,
              color: AppColor.greyOulineTextFildColor,
            ),
          ),
          hintText: 'Tìm kiếm voucher',
          hintStyle: const TextStyle(
            color: AppColor.textHint,
          ),
        ),
      ),
    );
  }
}
