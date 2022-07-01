import 'package:flutter/material.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/app_bar/app_bar_main.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.primaryColor,
        child: Column(
          children: [
            const AppBarMain(title: 'Quên Mật Khẩu'),
            Container(
                padding: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Mã xác thực sẽ gửi đến 0908665574',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 30),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  direction: Axis.horizontal,
                  children: [
                    _otpTextField(context, true),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                    _otpTextField(context, false),
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(top: 58),
              child: ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  primary: AppColor.buttonColor,
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 100,
                    bottom: 22,
                    top: 22,
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
            Container(
                padding: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Gửi lại mã',
                  style: TextStyle(
                    color: Color.fromARGB(255, 46, 157, 231),
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 12),
                child: const Text(
                  'Sau 27 giây',
                  style: TextStyle(
                    color: Color.fromARGB(255, 46, 157, 231),
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 50),
                child: const Text(
                  'Điện thoại hỗ trợ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w800,
                  ),
                )),
            Container(
                padding: const EdgeInsets.only(top: 12),
                child: const Text(
                  '1900 8055',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w800,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  Widget _otpTextField(BuildContext context, bool autoFocus) {
    return Container(
        height: MediaQuery.of(context).size.shortestSide * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 206, 206, 206),
          shape: BoxShape.rectangle,
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLines: 1,
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        ));
  }
}
