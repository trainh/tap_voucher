import 'package:flutter/material.dart';
import 'package:tap_voucher/models/voucher.dart';
import 'package:tap_voucher/values/app_colors.dart';

class SeeReviewPage extends StatelessWidget {
  const SeeReviewPage({Key? key, required this.voucher}) : super(key: key);
  final Voucher voucher;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Đánh giá và nhận xét',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.secondColor,
      ),
      body: Container(),
    );
  }
}
