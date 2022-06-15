import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_voucher/screens/home.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/values/app_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();

  bool showLoginPassword = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.primaryColor,
        body: Container(
          color: AppColor.primaryColor,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: size.height * 3 / 10,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: AppColor.secondColor,
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            bottom: 20,
                          ),
                          child: Text(
                            'Đăng Nhập',
                            style: AppStyles.h4.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: AppColor.secondColor,
                        child: Image.asset(
                          AppAssets.logo,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 7 / 10,
                child: showLoginPassword
                    ? _buildLoginPassword(phoneController.text)
                    : _buildLoginPhoneNumber(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginPhoneNumber(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(60),
          child: CircleAvatar(
            radius: (50),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                AppAssets.user,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            top: 28,
            bottom: 28,
          ),
          child: TextField(
            controller: phoneController,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.greyOulineTextFildColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.greyOulineTextFildColor,
                ),
              ),
              hintText: 'Nhập số điện thoại của bạn tại đây',
              hintStyle: const TextStyle(
                color: AppColor.textHint,
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                showLoginPassword = true;
              });
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
              'Tiếp tục',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginPassword(String phoneNumber) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 60, right: 60, bottom: 48, left: 60),
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
                padding: EdgeInsets.only(top: 0.8),
                child: Text('Xin chào!'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.8),
                child: Text(phoneNumber),
              )
            ],
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
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.greyOulineTextFildColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: AppColor.greyOulineTextFildColor,
                ),
              ),
              hintText: 'Nhập mật khẩu của bạn tại đây',
              hintStyle: const TextStyle(
                color: AppColor.textHint,
              ),
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
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
              'Tiếp tục',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Center(
            child: InkWell(
              child: const Text(
                'Quên mật khẩu?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Center(
            child: InkWell(
              child: const Text(
                'Đăng nhập với số điện thoại khác',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
              onTap: () {
                setState(() {
                  showLoginPassword = false;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
