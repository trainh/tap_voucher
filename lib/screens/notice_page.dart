import 'package:flutter/material.dart';
import 'package:tap_voucher/values/app_colors.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.secondColor,
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Thông báo',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
