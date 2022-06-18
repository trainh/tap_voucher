import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:tap_voucher/data/list_voucher_used.dart';
import 'package:tap_voucher/data/list_voucher_used_yet.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/lists/list_voucher_not_used_yet.dart';
import 'package:tap_voucher/widgets/lists/list_voucher_used.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  int indexPage = 0;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<Widget> listWidget = [
      ListVoucherNotUsedYet(listVoucher: getListVoucherUserYet()),
      ListVoucherUsed(listVoucher: getListVoucherUsed()),
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Voucher của bạn',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.secondColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() {
              _currentIndex = i;
              indexPage = i;
            }),
            items: [
              /// Likes
              SalomonBottomBarItem(
                icon: const Icon(Icons.shopping_bag_rounded),
                title: const Text("Chưa sửa dụng"),
                selectedColor: Colors.pink,
              ),

              SalomonBottomBarItem(
                icon: const Icon(Icons.shopping_bag_outlined),
                title: const Text("Đã sửa dụng"),
                selectedColor: Colors.teal,
              ),
            ],
          ),
          listWidget[indexPage],
        ],
      ),
    );
  }
}
