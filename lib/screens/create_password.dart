// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tap_voucher/screens/home.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/app_bar/app_bar_main.dart';

import '../values/app_assets.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key, required this.phoneNumber}) : super(key: key);
  final String phoneNumber;

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();

  bool warningCreatePassword = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const AppBarMain(title: "Tạo mật khẩu"),
            SizedBox(
              height: size.height * 7 / 10,
              child: warningCreatePassword == false
                  ? _buildWarningCreatePassword(context)
                  : _buildCreatePassword(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCreatePassword(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          const Text('Vui lòng nhập mật khẩu mới của bạn'),
          const Text(
            '(Mật khẩu phải có ít nhất 8 ký tự: Bao gồm chữ và số)',
            style: TextStyle(color: Colors.blue, fontSize: 13),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 28,
              bottom: 28,
            ),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColor.greyOulineTextFildColor,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(width: 3, color: Colors.black)),
                  hintText: 'Nhập mật khẩu',
                  hintStyle: const TextStyle(
                    color: AppColor.textHint,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 0,
              bottom: 28,
            ),
            child: TextField(
              controller: rePasswordController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 1,
                        color: AppColor.greyOulineTextFildColor,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(width: 3, color: Colors.black)),
                  hintText: 'Nhập lại mật khẩu',
                  hintStyle: const TextStyle(
                    color: AppColor.textHint,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 58),
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                primary: AppColor.buttonColor,
                padding: const EdgeInsets.only(
                  left: 170,
                  right: 170,
                  bottom: 20,
                  top: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Tiếp tục',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWarningCreatePassword(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          CircleAvatar(
            radius: (50),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                AppAssets.user,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              'Xin chào!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(widget.phoneNumber),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 32),
            child: Text(
              'Vui lòng tạo mật khẩu đăng nhập để có trải nghiệm tốt hơn',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    warningCreatePassword = true;
                  });
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
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Tạo mật khẩu',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Center(
              child: InkWell(
                child: const Text(
                  'Để sau',
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
