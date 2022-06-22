import 'package:flutter/material.dart';
import 'package:tap_voucher/data/list_voucher.dart';
import 'package:tap_voucher/widgets/app_bar/app_bar_home_page.dart';
import 'package:tap_voucher/widgets/lists/list_voucher_horizontal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AppBarHomePage(),
          ListVoucherHorizontal(
            typeVoucher: 'Voucher các quán gần bạn hôm nay',
            listVoucher: getListVoucherGetNow(),
          ),
          ListVoucherHorizontal(
            typeVoucher: 'Voucher các quán tại Hồ Chí Minh',
            listVoucher: getListVoucherNewStore(),
          ),
        ],
      ),
    );
  }
}
