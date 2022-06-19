import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:tap_voucher/screens/login_page.dart';
import 'package:tap_voucher/values/app_colors.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColor.textBlueBack, // <-- SEE HERE
        ),
        title: const Text(
          'Tùy chọn',
          style: TextStyle(
            color: AppColor.textBlueBack,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColor.secondColor,
      ),
      body: Container(
        width: double.infinity,
        color: AppColor.primaryColor,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.textBlueBack,
                    width: 1,
                  ),
                ),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hoạt động và thông tin của tôi',
                    style: TextStyle(
                      color: AppColor.textBlueBack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.history,
                                color: AppColor.textButtonColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Lịch sử hoạt động',
                              style: TextStyle(
                                color: AppColor.textButtonColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.account_box_rounded,
                                color: AppColor.textButtonColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Quản lý tài khoản',
                              style: TextStyle(
                                color: AppColor.textButtonColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.qr_code,
                              color: AppColor.textBlueBack,
                            )),
                            TextSpan(
                              text: 'Quản lý voucher',
                              style: TextStyle(
                                color: AppColor.textButtonColor,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.only(top: 8),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()),
                            (route) => false);
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      label: const Text(
                        'Đăng xuất',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 24, top: 20),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: AppColor.textBlueBack,
              ))),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: const Text(
                      'Các tiện ích hỗ trợ nhanh',
                      style: TextStyle(
                        color: AppColor.textBlueBack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _card(
                        'Thành Viên',
                        LineIcon.medal(
                          size: 40,
                        ),
                        Color.fromARGB(255, 255, 74, 74),
                      ),
                      _card(
                          'Tất cả dịch vụ',
                          LineIcon.globe(
                            size: 40,
                          ),
                          Color.fromARGB(255, 123, 195, 255))
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _card(
                          'Hỗ trợ kỹ thuật trực tuyến',
                          LineIcon.home(
                            size: 40,
                          ),
                          const Color.fromARGB(255, 247, 229, 72),
                        ),
                        _card(
                          'Các cửa hàng đã theo dỗi',
                          const Icon(
                            Icons.share_location_sharp,
                            size: 40,
                          ),
                          Color.fromARGB(255, 98, 233, 226),
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _card(
                          'Đăng ký cửa hàng',
                          LineIcon.phone(
                            size: 40,
                          ),
                          const Color.fromARGB(255, 255, 128, 223),
                        ),
                        _card(
                          'Góp ý - Khiếu nại',
                          LineIcon.facebookMessenger(
                            size: 40,
                          ),
                          const Color.fromARGB(255, 94, 243, 106),
                        )
                      ]),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      'Thông tin ứng dụng',
                      style: TextStyle(
                        color: AppColor.textBlueBack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _infor('Quy định nhận voucher, sử dụng voucher'),
                  _infor('Quy chế hoạt động'),
                  _infor('Thông tin đối tác'),
                  _infor('Thông tin khuyến mãi'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _card(String titel, Icon icons, Color color) {
  return Padding(
    padding: const EdgeInsets.only(top: 28),
    child: GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: color,
            ),
            width: 70,
            height: 70,
            child: icons,
          ),
          Container(
            width: 130,
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              titel,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _infor(String title) {
  return Container(
    padding: const EdgeInsets.only(left: 20, top: 20),
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
              child: Icon(
            Icons.bookmark_outline,
            color: AppColor.textBlueBack,
            size: 30,
          )),
          TextSpan(
            text: title,
            style: const TextStyle(
              color: AppColor.textButtonColor,
              fontSize: 22,
            ),
          ),
        ],
      ),
    ),
  );
}
