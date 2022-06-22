import 'package:flutter/material.dart';
import 'package:tap_voucher/screens/admin/admin_page.dart';
import 'package:tap_voucher/screens/user/home.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/app_bar/app_bar_main.dart';

class Decentralization extends StatelessWidget {
  const Decentralization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarMain(title: 'Chọn Quyền'),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const AdminPage()),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(
                primary: AppColor.buttonColor,
                padding: const EdgeInsets.only(
                  left: 170,
                  right: 170,
                  bottom: 20,
                  top: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
              ),
              child: const Text(
                'Admin',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const Home()),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(
                primary: AppColor.buttonColor,
                padding: const EdgeInsets.only(
                  left: 177,
                  right: 177,
                  bottom: 20,
                  top: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // <-- Radius
                ),
              ),
              child: const Text(
                'User',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
