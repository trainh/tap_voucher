import 'package:flutter/material.dart';
import 'package:tap_voucher/screens/menu_page.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';

class AppBarHomePage extends StatelessWidget {
  const AppBarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Container(
        color: AppColor.secondColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 4,
                right: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MenuPage()),
                      );
                    },
                    icon: const Icon(
                      Icons.subject_rounded,
                      size: 48,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      children: const [
                        Text('Xin chào Anh'),
                        Text(
                          'Nguyễn Hoàng Trai',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_sharp,
                      size: 42,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: CircleAvatar(
                              radius: (40),
                              backgroundColor: Colors.white,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  AppAssets.user,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            width: 240,
                            child: const Text(
                                'Hiện Anh có một voucher chưa sửa dụng vào ngày 15/08/2022'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 80,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.qr_code_scanner,
                      size: 80,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
