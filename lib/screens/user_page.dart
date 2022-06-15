import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tap_voucher/screens/home.dart';
import 'package:tap_voucher/screens/login_page.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPage();
}

class _UserPage extends State<UserPage> {
  String text = 'HomePage';
  int idSex = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Thông tin tài khoản',
            style: AppStyles.h4.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: AppColor.primaryColor,
        ),
        body: Container(
          height: double.infinity,
          color: AppColor.primaryColor,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: AppColor.primaryColor,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
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
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Nguyễn Hoàng Trai',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const LoginPage()),
                                    (route) => false);
                                deactivate();
                              });
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
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text('Trang cá nhân',
                              style: TextStyle(
                                  color: AppColor.greyOulineTextFildColor)),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.secondColor,
                                width: 2,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Expanded(
                                flex: 2,
                                child: Text(
                                  'Danh xưng:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Radio(
                                        activeColor: AppColor.activeNavigation,
                                        value: 1,
                                        groupValue: idSex,
                                        onChanged: (i) {
                                          setState(() {
                                            idSex = 1;
                                          });
                                        }),
                                    const Expanded(child: Text('Anh'))
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Radio(
                                        value: 2,
                                        groupValue: idSex,
                                        onChanged: (i) {
                                          setState(() {
                                            idSex = 2;
                                          });
                                        }),
                                    const Expanded(child: Text('Chị'))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  'Họ và tên',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextField(
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    suffixIcon: const Icon(
                                      Icons.edit_outlined,
                                      size: 28,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                    hintText: 'Nguyễn Hoàng Trai',
                                    hintStyle: const TextStyle(
                                      color: AppColor.textHint,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Số điện thoại',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        hintText: '0374192404',
                                        hintStyle: const TextStyle(
                                          color: AppColor.textHint,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Mật khẩu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                        suffixIcon: const Icon(
                                          Icons.edit_outlined,
                                          size: 28,
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        hintText: '***********',
                                        hintStyle: const TextStyle(
                                          color: AppColor.textHint,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Email',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                        suffixIcon: const Icon(
                                          Icons.edit_outlined,
                                          size: 28,
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        hintText: 'traitrantruon@gmail.com',
                                        hintStyle: const TextStyle(
                                          color: AppColor.textHint,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Column(children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      'Số địa chỉ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: TextField(
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                        suffixIcon: const Icon(
                                          Icons.edit_outlined,
                                          size: 28,
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 10),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                            width: 1,
                                            color: AppColor
                                                .greyOulineTextFildColor,
                                          ),
                                        ),
                                        hintText:
                                            'phường Long Thạnh Mỹ, TP. Thủ Đức',
                                        hintStyle: const TextStyle(
                                          color: AppColor.textHint,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => const Home()),
                                        (route) => false);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: AppColor.buttonColor,
                                    padding: const EdgeInsets.only(
                                      left: 150,
                                      right: 150,
                                      bottom: 15,
                                      top: 15,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          15), // <-- Radius
                                    ),
                                  ),
                                  child: const Text(
                                    'Hoàn thành',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
