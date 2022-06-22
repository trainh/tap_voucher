import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tap_voucher/screens/user/home_page.dart';
import 'package:tap_voucher/screens/user/user_page.dart';
import 'package:tap_voucher/screens/user/voucher_page.dart';
import 'package:tap_voucher/values/app_colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

int posPage = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> listWidget = [
      const HomePage(),
      const VoucherPage(),
      const UserPage(),
    ];
    return Scaffold(
      body: listWidget[posPage],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        color: AppColor.greyOulineTextFildColor,
        backgroundColor: AppColor.primaryColor,
        activeColor: AppColor.activeNavigation,
        items: const [
          TabItem(icon: Icons.home, title: 'Trang chủ'),
          TabItem(icon: Icons.sticky_note_2, title: 'Xem voucher'),
          TabItem(icon: Icons.account_box, title: 'Tài khoản'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(
            () {
              posPage = i;
            },
          );
        },
      ),
    );
  }
}
